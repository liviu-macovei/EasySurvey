namespace EasySurvey.Services.Mock
{
    public class NextQuestionServiceMock:INextQuestionService
    {
        public int GetNextQuestionAfterId(int id)
        {
            return id + 1;
        }
    }
}