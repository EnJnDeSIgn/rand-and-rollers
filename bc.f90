program bell_curve
! In statistics, the bell curve is often associated with the
! normal distribution, which is a probability distribution
! that is symmetric about the mean, showing that data near
! the mean are more frequent in occurrence than data far from
! the mean. The equation for the normal distribution is:
! f(x)=σ2π​1​e−21​(σx−μ​)2
! Here’s what each symbol represents:

! ( f(x) ): Probability density function (pdf)
! ( x ): The variable
! ( \mu ): Mean of the distribution
! ( \sigma ): Standard deviation of the distribution
! ( \pi ): Mathematical constant Pi (approximately 3.14159)
! ( e ): Euler’s number (approximately 2.71828)

! The normal distribution is characterized by the mean and
! the standard deviation. The mean determines the location of
! the center of the graph, and the standard deviation
! determines the height and width of the graph
! When comparing two bell curves (normal distributions), you
! would look at their means and standard deviations. If the
! means are different, the curves will be centered at
! different points on the x-axis. If the standard deviations
! are different, one curve will be wider or narrower than the
! other
! To compare the distributions quantitatively, statisticians
! often use z-scores, which measure the distance of a score
! from the mean in units of standard deviation. This allows
! for comparison between different normal distributions
    implicit none
    real :: mu, sigma, x, pdf

    ! Constants
    real, parameter :: pi = 3.14159
    real, parameter :: e = 2.71828

    ! Inputs
    print *, "Enter the mean (mu): "
    read *, mu
    print *, "Enter the standard deviation (sigma): "
    read *, sigma
    print *, "Enter the variable (x): "
    read *, x

    ! Calculate the pdf
    pdf = (1.0 / (sigma * sqrt(2.0 * pi))) * e**(-0.5 * ((x - mu) / sigma)**2)
    
    ! Output the result
    print *, "Probability density function (pdf) value: ", pdf
end program bell_curve

       
      
      
        
      
    
  

  
  
  
  
  
  
  
    
    
  

    
     
  

         
        
    
    
  

    
    
    
    
    
    
  






















