<?php

function dataHash($target, $targetHashed = NULL){
      $saltLength = 10;
      $hashingMethod = 'sha1';

      //If no password to validate
      if ($targetHashed == NULL){
         $randomSalt = '';

         //Build 16 character random salt
         for ($i = 0; $i<16; $i++){
            $randNum = rand(33, 255); //Get random number between 33 - 255
            $randomSalt .= chr($randNum); //Get ascii character based on random number
         }
         $randomSalt = hash($hashingMethod, $randomSalt); //hash the random salt
      }else{ //Password to validate
         $randomSalt = $targetHashed; //set random salt to hashed password to be checked
      }
    	       
      //This code makes sure at least 10 characters from the original password remain in the hashed result.  Prevents from situations where $saltLength is set
      //too long and entire password is cut out, leaving only the salt in which case the result would always be true.
      if($saltLength > (strlen($randomSalt) - 10)){
         $saltLength = (strlen($randomSalt) - 10);
      }

      //$hLPosition is used to determine what part of the salt will actually be used
      $hLPosition = strlen($target); //Set hLPosition to length of password to be encrypted

      while ($hLPosition > $saltLength){ //while length of password is greater than length of salt
         $hNumber = substr($hLPosition, -1); //grabs last number of hLPosition (Ex. If hLPosition = 19 then hNumber = 9)
         $hLPosition = $hLPosition * ($hNumber/10); //resets hLPosition
      }

      $hLPosition = (integer)$hLPosition; //Cast decimal to integer (2.4 becomes 2)
      $hRPosition = $saltLength - $hLPosition; //Determines the start position for the rest of the salt that will be used

      $hFSalt = substr($randomSalt, 0, $hLPosition); //Set the hFSalt to a substring of the actual salt (begining)
      $hLSalt = substr($randomSalt, -$hRPosition, $hRPosition); //Set hLSalt to another substring of the actual salt (end)

      $hPassHash = hash($hashingMethod, ($hLSalt . $target . $hFSalt)); //Hash the two salt substrings and password together

      if($saltLength != 0){
         if($hRPosition == 0){
            $hPassHash = substr($hPassHash, $hLPosition);
         }else{
            $hPassHash = substr($hPassHash, $hLPosition, -$hRPosition);
         }
      }

      return $hFSalt . $hPassHash . $hLSalt;
   }
$plain_password = 'admin';   
$pass =  dataHash($plain_password);   
print $pass;
?>
