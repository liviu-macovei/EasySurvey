using Microsoft.Data.Entity;
using Microsoft.Data.Entity.Metadata;
using EasySurvey.Common.Models;

namespace EasySurvey.Repositories.Sql
{
    public partial class EasySurveyStore_DevContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlServer(@"Server=tcp:tstprgazuredb1.database.windows.net,1433;Database=EasySurveyStore_Dev;User ID=sa2@tstprgazuredb1;Password=Start123;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Address>(entity =>
            {
                entity.Property(e => e.AddressLine1).HasMaxLength(1024);

                entity.Property(e => e.AddressLine2).HasMaxLength(1024);

                entity.Property(e => e.AddressLine3).HasMaxLength(1024);

                entity.Property(e => e.CareOf).HasMaxLength(1024);

                entity.Property(e => e.City).HasMaxLength(1024);

                entity.Property(e => e.Country).HasMaxLength(1024);

                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.Property(e => e.PostalCode).HasMaxLength(1024);

                entity.Property(e => e.Recipient).HasMaxLength(1024);
            });

            modelBuilder.Entity<Answer>(entity =>
            {
                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.HasOne(d => d.AnswerGroup).WithMany(p => p.Answer).HasForeignKey(d => d.AnswerGroupId).OnDelete(DeleteBehavior.Restrict);

                entity.HasOne(d => d.AnswerSection).WithMany(p => p.Answer).HasForeignKey(d => d.AnswerSectionId).OnDelete(DeleteBehavior.Restrict);

                entity.HasOne(d => d.Question).WithMany(p => p.Answer).HasForeignKey(d => d.QuestionId).OnDelete(DeleteBehavior.Restrict);

                entity.HasOne(d => d.Option).WithMany(p => p.Answer).HasForeignKey(d => new { d.OptionId, d.OptionGroupId });
            });

            modelBuilder.Entity<AnswerGroup>(entity =>
            {
                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.HasOne(d => d.Address).WithMany(p => p.AnswerGroup).HasForeignKey(d => d.AddressId).OnDelete(DeleteBehavior.Restrict);

                entity.HasOne(d => d.SectionGroup).WithMany(p => p.AnswerGroup).HasForeignKey(d => d.SectionGroupId).OnDelete(DeleteBehavior.Restrict);

                entity.HasOne(d => d.Survey).WithMany(p => p.AnswerGroup).HasForeignKey(d => d.SurveyId).OnDelete(DeleteBehavior.Restrict);
            });

            modelBuilder.Entity<AnswerSection>(entity =>
            {
                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.HasOne(d => d.AnswerGroup).WithMany(p => p.AnswerSection).HasForeignKey(d => d.AnswerGroupId).OnDelete(DeleteBehavior.Restrict);

                entity.HasOne(d => d.Section).WithMany(p => p.AnswerSection).HasForeignKey(d => d.SectionId).OnDelete(DeleteBehavior.Restrict);
            });

            modelBuilder.Entity<Comment>(entity =>
            {
                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.Property(e => e.UserId)
                    .IsRequired()
                    .HasMaxLength(450);

                entity.HasOne(d => d.Survey).WithMany(p => p.Comment).HasForeignKey(d => d.SurveyId).OnDelete(DeleteBehavior.Restrict);
            });

            modelBuilder.Entity<Customer>(entity =>
            {
                entity.Property(e => e.AccountNumber).HasMaxLength(1024);

                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.CVR)
                    .HasMaxLength(10)
                    .HasColumnType("nchar");

                entity.Property(e => e.Email).HasMaxLength(1024);

                entity.Property(e => e.HomePage).HasMaxLength(1024);

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1024);

                entity.Property(e => e.RegistrationNumber).HasMaxLength(1024);

                entity.Property(e => e.Responsible).HasMaxLength(1024);

                entity.Property(e => e.ResponsibleEmail).HasMaxLength(1024);

                entity.Property(e => e.ResponsibleTelephone).HasMaxLength(1024);

                entity.Property(e => e.Telephone).HasMaxLength(1024);
            });

            modelBuilder.Entity<NextQuestion>(entity =>
            {
                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.HasOne(d => d.BaseQuestion).WithMany(p => p.NextQuestion).HasForeignKey(d => d.BaseQuestionId).OnDelete(DeleteBehavior.Restrict);

                entity.HasOne(d => d.NextQuestionNavigation).WithMany(p => p.NextQuestionNavigation).HasForeignKey(d => d.NextQuestionId);
            });

            modelBuilder.Entity<Option>(entity =>
            {
                entity.HasKey(e => new { e.Id, e.OptionGroupId });

                entity.Property(e => e.Id).ValueGeneratedOnAdd();

                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.Property(e => e.Name).HasMaxLength(1024);

                entity.HasOne(d => d.OptionGroup).WithMany(p => p.Option).HasForeignKey(d => d.OptionGroupId).OnDelete(DeleteBehavior.Restrict);
            });

            modelBuilder.Entity<OptionGroup>(entity =>
            {
                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.Property(e => e.Name).HasMaxLength(1024);
            });

            modelBuilder.Entity<Owner>(entity =>
            {
                entity.Property(e => e.AddressLine1).HasMaxLength(1024);

                entity.Property(e => e.AddressLine2).HasMaxLength(1024);

                entity.Property(e => e.AddressLine3).HasMaxLength(1024);

                entity.Property(e => e.City).HasMaxLength(50);

                entity.Property(e => e.Country).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.Property(e => e.Name).HasMaxLength(1024);

                entity.Property(e => e.PostalCode).HasMaxLength(50);
            });

            modelBuilder.Entity<Question>(entity =>
            {
                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.HasOne(d => d.OptionGroup).WithMany(p => p.Question).HasForeignKey(d => d.OptionGroupId);

                entity.HasOne(d => d.QuestionType).WithMany(p => p.Question).HasForeignKey(d => d.QuestionTypeId).OnDelete(DeleteBehavior.Restrict);

                entity.HasOne(d => d.Section).WithMany(p => p.Question).HasForeignKey(d => d.SectionId).OnDelete(DeleteBehavior.Restrict);
            });

            modelBuilder.Entity<QuestionType>(entity =>
            {
                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1024)
                    .HasColumnType("varchar");
            });

            modelBuilder.Entity<Section>(entity =>
            {
                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.IsRepeatable).HasDefaultValue(true);

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.Property(e => e.Title)
                    .IsRequired()
                    .HasMaxLength(1024);

                entity.HasOne(d => d.SectionGroup).WithMany(p => p.Section).HasForeignKey(d => d.SectionGroupId).OnDelete(DeleteBehavior.Restrict);
            });

            modelBuilder.Entity<SectionGroup>(entity =>
            {
                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.Property(e => e.Title)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.HasOne(d => d.SurveyTemplate).WithMany(p => p.SectionGroup).HasForeignKey(d => d.SurveyTemplateId).OnDelete(DeleteBehavior.Restrict);
            });

            modelBuilder.Entity<Survey>(entity =>
            {
                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.Property(e => e.UserId)
                    .IsRequired()
                    .HasMaxLength(450);

                entity.HasOne(d => d.Customer).WithMany(p => p.Survey).HasForeignKey(d => d.CustomerId).OnDelete(DeleteBehavior.Restrict);

                entity.HasOne(d => d.SurveyState).WithMany(p => p.Survey).HasForeignKey(d => d.SurveyStateId).OnDelete(DeleteBehavior.Restrict);

                entity.HasOne(d => d.SurveyTemplate).WithMany(p => p.Survey).HasForeignKey(d => d.SurveyTemplateId).OnDelete(DeleteBehavior.Restrict);
            });

            modelBuilder.Entity<SurveyState>(entity =>
            {
                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1024);
            });

            modelBuilder.Entity<SurveyTemplate>(entity =>
            {
                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.Property(e => e.Title)
                    .IsRequired()
                    .HasMaxLength(1024);

                entity.HasOne(d => d.Owner).WithMany(p => p.SurveyTemplate).HasForeignKey(d => d.OwnerId).OnDelete(DeleteBehavior.Restrict);

                entity.HasOne(d => d.SurveyType).WithMany(p => p.SurveyTemplate).HasForeignKey(d => d.SurveyTypeId).OnDelete(DeleteBehavior.Restrict);
            });

            modelBuilder.Entity<SurveyType>(entity =>
            {
                entity.Property(e => e.CreatedBy).HasMaxLength(1024);

                entity.Property(e => e.CreatedOn).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(1024);

                entity.Property(e => e.ModifiedOn).HasColumnType("datetime");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1024);
            });
        }

        public virtual DbSet<Address> Address { get; set; }
        public virtual DbSet<Answer> Answer { get; set; }
        public virtual DbSet<AnswerGroup> AnswerGroup { get; set; }
        public virtual DbSet<AnswerSection> AnswerSection { get; set; }
        public virtual DbSet<Comment> Comment { get; set; }
        public virtual DbSet<Customer> Customer { get; set; }
        public virtual DbSet<NextQuestion> NextQuestion { get; set; }
        public virtual DbSet<Option> Option { get; set; }
        public virtual DbSet<OptionGroup> OptionGroup { get; set; }
        public virtual DbSet<Owner> Owner { get; set; }
        public virtual DbSet<Question> Question { get; set; }
        public virtual DbSet<QuestionType> QuestionType { get; set; }
        public virtual DbSet<Section> Section { get; set; }
        public virtual DbSet<SectionGroup> SectionGroup { get; set; }
        public virtual DbSet<Survey> Survey { get; set; }
        public virtual DbSet<SurveyState> SurveyState { get; set; }
        public virtual DbSet<SurveyTemplate> SurveyTemplate { get; set; }
        public virtual DbSet<SurveyType> SurveyType { get; set; }
    }
}