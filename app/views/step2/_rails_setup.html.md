# **Rails setup**

As you know, Ruby on Rails is cross-platform, meaning that you can run it on both Linux, Mac OS or Windows. Personally,
I prefer Linux/Unix-based environments such as Linux distros (Ubuntu, Linux Mint...) or Mac OS. However, there are two
reasons for writing this guideline assuming that you're using **Windows**:

*   There is a larger number of students who are using Windows (7, 8, 8.1, even 10 DP)
*   Installing Ruby on Rails in Mac OS and Linux are much easier, you can find many tutorials online, or ask me I can do
it for you

Now, let's start!

### Step 1 - Download RailsFTW

There are multiple installation packages for Rails, including famous ones such as: Bitnami, Ruby Installers... However,
we will use a much simpler and easy-to-use package called **RailsFTW**

You can download it from: [RailsFTW page](http://railsftw.bryanbibat.net/ "Rails FTW Download link")

### Step 2 - Install RailsFTW

Follow the instruction to install RailsFTW, it's quite simple by clicking sequences of "Next" and finally "Finish" - A
common pattern in Windows world.

### Step 3 - Download DevKit

Ruby Development Kit is required by some bundles, so we need to install it. First, you can download the package from:
[DevKit download page](https://github.com/oneclick/rubyinstaller/downloads/ "DevKit download page")

Please note that we will get the ".exe" package, something like "DevKit-tdm-32-4.5.2-20111229-1559-sfx.exe —
DevKit-4.5.2 self extracting archive"

### Step 4 - Install DevKit

1. Extract DevKit to a folder (like c:\DevKit")
2. Open Command prompt
3. Go to DevKit folder, such as C:\DevKit by typing:
        > cd C:\DevKit
4. Initialize DevKit:
        > ruby dk.rb init
5. Install DevKit:
        > ruby dk.rb install

And voila! You're done!

*** Do not remove DevKit folder ***

### Final Step - Test your environment

Open your Command Prompt, test Ruby:
        > ruby -v
        ruby 2.1.3p242 (2014-09-19 revision 47630) [i386-mingw32]
Test Rails:
        > rails -v
        Rails 4.1.6

Voila! If you see the above lines, it means you have successfully installed Rails on your computer. Now we move to
the next step to test the application