ubuntu-rails-setup
==================

Set up ubuntu for glue and other rails app automatically this is the script for ruby , rails , apache server(ngnix) , Mysql

  This is for UBUNTU v-12.0.4
  
        1> It will install ruby v-1.9.3 
        
        2> Rails v-3.2.14


Please ensure that the script runs completely before you exit !!



Setup:

        1> From the terminal run the following commands to set up all the abouve mentioned applications.  
        
        2> Clone the setup repository from github by running :
                    
                    git clone https://github.com/QuantiumIndia/ubuntu-rails-setup.git 
        
        3> Enter the cloned directory by entering:
        
                    cd dir_name
        
        4> Run the command 
                  
                    bash ./myruby.sh

                        [or]

                    curl -s https://raw.github.com/QuantiumIndia/ubuntu-rails-setup/master/myruby.sh | bash

        Note: To use second command to install script, first you have to download "000-default" file from repo.

                  
        5> Now, the above command would have installed all the required setup. while running the bash command the script will as for a Mysql password.
            please enter the password and press enter.
            
        6> Now you are all setup to proceed to create new applications with Ruby on Rails.
