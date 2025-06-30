class AppStrings {
  static final AppStrings instance = AppStrings._internal();

  factory AppStrings() {
    return instance;
  }

  AppStrings._internal();
  // App name and branding
  final String appName = "Shakhi Shali";
  final String tagline = "Empowering Every Step of Your Journey";
  final String loadingText = "Loading...";

  // Login screen labels

  final String emailOrPhone = "Email or Phone";
  final String enterEmailOrPhone = "Enter your email or phone";

  final String password = "Password";
  final String enterPassword = "Enter your password";

  final String login = "Login";
  final String orContinueWith = "Or continue with";
  final String google = "Google";

  final String forgotPassword = "Forgot Password?";
  final String dontHaveAccount = "Don't have an account?";
  final String signUpNow = "Sign up now";

  //  Signup
  final String createAccount = "Create Account";
  final String signUpSubTitle = "Sign up to start your journey";
  final String fullName = "Full name";
  final String emailAddress = "Email address";
  final String confirmPassword = "Confirm password";
  final String agreeText = "I agree to the";
  final String terms = "Terms";
  final String and = "and";
  final String privacyPolicy = "Privacy Policy";
  final String signUp = "Sign up";

  // 🧾 Forgot Password
  final String forgotPasswordTitle = "Forgot Password";
  final String forgotPasswordSubtitle = "Enter your email to reset password";
  final String resetPassword = "Reset Password";
  final String rememberPassword = "Remember your password?";
  final String loginNow = "Login";

  // 🔐 OTP Screen
  final String enterOtp = "Enter OTP";
  final String enterOtpSubtitle =
      "Please enter the verification code sent to your email";
  final String verifyOtp = "Verify OTP";
  final String didNotReceiveCode = "Didn't receive code?";
  final String resend = "Resend";

  // Dashboard
  final String dashboardTitle = "DashBoard";
  final String welcomeText = "Welcome back, Sarah!";
  final String periodStartsIn = "Your period starts in 7 days";
  final String currentCycle = "Current Cycle";
  final String currentCycleDay = "Day 17 of 28";

  // Cycle Actions
  final String period = "Period";
  final String symptoms = "Symptoms";
  final String fertility = "Fertility";
  final String pregnancy = "Pregnancy";

  // Insights
  final String todaysInsights = "Today's Insights";
  final String sleepQuality = "Sleep Quality";
  final String sleepQualityDesc =
      "Your sleep pattern shows improvement. Keep maintaining 7-8 hours of rest.";
  final String heartRateInsight =
      "Your resting heart rate is slightly higher than usual. Try light exercises.";

  // Quick Log
  final String quickLog = "Quick Log";
  final String flow = "Flow";
  final String mood = "Mood";
  final String medicine = "Medicine";

  // Wellness Tips
  final String wellnessTips = "Wellness Tips";
  final String yogaForPms = "Yoga for PMS";
  final String yogaDesc = "Gentle poses to ease discomfort";

  final String dietTips = "Healthy Diet Tips";
  final String dietDesc = "Nutrition for your cycle";

  // Bottom Navigation
  final String home = "Home";
  final String calendar = "Calendar";
  final String reports = "Reports";
  final String profile = "Profile";

  // Profile
  final String achieveItem1 = "Consistent Tracker";
  final String achieveItem2 = "Health Hero";
  final String achieveItem3 = "Self-Care Queen";

  // calender
  final String calenderTitle = "Track Your Period";
  final String currentPeriodDateTitle = "Current Period Date";
  final String lastPeriodStartedOn = "Your last period started on:";
  final String nextPeriodStartsOn = "Your next period will start on:";
  final String averageCycleLength = "Average cycle length:";
  final String saveChanges = "Save Changes";
  final String periodStart = "Period Start";
  final String periodEnd = "Period End";
  final String today = "Today";

  //reports

  // Section Titles
  final String title = "Your Period Report";
  final String avgCycleLabel = "Avg Cycle";
  final String avgPeriodLabel = "Avg Period";
  final String longestLabel = "Longest";
  final String shortestLabel = "Shortest";
  final String patternCalendarTitle = "Pattern Calendar";
  final String cycleTrendTitle = "Cycle Length Trend";
  final String periodDurationTitle = "Period Duration";
  final String insightsTitle = "Insights";

  // Values
  final String avgCycleValue = "28 days";
  final String avgPeriodValue = "5 days";
  final String longestValue = "31 days";
  final String shortestValue = "26 days";

  // Insights
  final String insightsLine1 =
      "Your cycles are regular with an average length of 28 days.";
  final String insightsLine2 =
      "In the past 6 months, your shortest period was 4 days, and your longest was 6 days.";

  // final String appName = " Sakhi Sali ";

  // final String login = 'Login';
  // final String signup = 'Sign Up';
  //
  // final String emailHint = 'Email address';
  // final String passwordHint = 'Password';
  // final String confirmPasswordHint = 'Confirm Password';
  // final String rememberMe = "Remember me";
  // final String forgotPassword = "Forgot Password?";
  // final String continueText = "Continue";
  // final String orSignUpWith = "or Sign up with";
  //
  // final String signUp = "Sign Up";
  // final String signIn = "Sign In";
  // final String google = "Google";
  // final String apple = "Apple";
  // final String doNotHaveAccount = "Don't have an account?";
  // final String alreadyHaveAccount = "Already have an account?";

  //

  // PMS Yoga Poses Screen
  final String pmsYogaTitle = "PMS Yoga Poses";
  final String startPractice = "Start Practice";

  // Yoga Pose Names
  final String poseChild = "Child's Pose (Balasana)";
  final String poseCatCow = "Cat-Cow Pose";
  final String poseForwardFold = "Forward Fold";
  final String poseButterfly = "Butterfly Pose";

  // Yoga Pose Levels
  final String levelBeginner = "Beginner";
  final String levelIntermediate = "Intermediate";

  // Yoga Pose Descriptions
  final String descChild =
      "Perfect for beginners and advanced practitioners alike  this restorative pose helps relieve stress and tension.";
  final String descCatCow = "Relieves tension in spine and lower back";
  final String descForwardFold = "Relieves tension in lower back";
  final String descButterfly = "Opens hips and relieves cramps";

  // Yoga Pose Durations
  final String durationChild = "5-10 mins";
  final String durationCatCow = "3-5 mins";
  final String durationForwardFold = "5 mins";
  final String durationButterfly = "5-8 mins";

  // PMS Foods Screen
  final String pmsFoodTitle = "PMS-Friendly Foods";
  final String searchPlaceholder = "Search foods...";

  // Categories
  final String categorySweets = "Sweets";
  final String categoryGreens = "Greens";
  final String categoryFruits = "Fruits";
  final String categoryGrains = "Grains";

  // Food 1 - Dark Chocolate
  final String foodDarkChocolateTitle = "Dark Chocolate";
  final String foodDarkChocolateDesc =
      "Rich in magnesium and antioxidants, dark chocolate helps boost mood and relieve stress while reducing cramps.";

  // Food 2 - Leafy Greens
  final String foodLeafyGreensTitle = "Leafy Greens";
  final String foodLeafyGreensDesc =
      "Packed with magnesium and iron, leafy greens help reduce bloating and fatigue while supporting energy levels.";

  // Food 3 - Mixed Berries
  final String foodMixedBerriesTitle = "Mixed Berries";
  final String foodMixedBerriesDesc =
      "High in vitamin C and antioxidants, berries help stabilize mood and reduce inflammation during PMS.";

  // 🔔 Notifications
  final String notificationsTitle = "Notifications";

  // Tabs
  final String tabAll = "All";
  final String tabHealthTips = "Health Tips";
  final String tabReminders = "Reminders";
  final String tabUpdates = "Updates";

  // Notification: Stretch to Relieve Cramps
  final String notifStretchTitle = "Stretch to Relieve Cramps";
  final String notifStretchTime = "10:00 AM";
  final String notifStretchDesc =
      "Try these gentle yoga poses to ease menstrual discomfort. Perfect for beginners!";
  final String notifStretchCTA = "View Poses →";

  // Notification: Hydration Reminder
  final String notifHydrationTitle = "Hydration Reminder";
  final String notifHydrationTime = "9:30 AM";
  final String notifHydrationDesc =
      "Remember to drink water regularly. Staying hydrated helps reduce bloating and cramps.";

  // Notification: New Wellness Tips Added
  final String notifWellnessTitle = "New Wellness Tips Added";
  final String notifWellnessTime = "Yesterday";
  final String notifWellnessDesc =
      "Check out our latest collection of natural remedies and wellness tips for PMS relief.";
  final String notifWellnessCTA = "Read More →";

  // Notification: Sleep Schedule Reminder
  final String notifSleepTitle = "Sleep Schedule Reminder";
  final String notifSleepTime = "2 days ago";
  final String notifSleepDesc =
      "Maintaining a consistent sleep schedule can help regulate your cycle and reduce PMS symptoms.";
}
