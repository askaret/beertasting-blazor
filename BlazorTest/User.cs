namespace BlazorTest
{
    public enum UserTypeEnum
    {
        NotLoggedIn,
        User,
        Administrator
    }

    public class User
    {
        private UserTypeEnum _userType = UserTypeEnum.NotLoggedIn;
        public UserTypeEnum UserType => _userType;
        public string UserName {  get;  }

        public User(string username)
        {
            UserName = username;
            loginUser();
        }

        private void loginUser()
        {
            _userType = UserTypeEnum.Administrator;
        }
    }
}
