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
    real, allocatable :: data(:)
    real :: mu, sigma, x, pdf, sum, sum_sq
    integer :: n, i

    ! Constants
    real, parameter :: pi = 3.14159
    real, parameter :: e = 2.71828

    ! Inputs
    print *, "Enter the number of data points: "
    read *, n
    allocate(data(n))

    print *, "Enter the data points: "
    do i = 1, n
        read *, data(i)
    end do

    ! Calculate mean (mu)
    sum = 0.0
    do i = 1, n
        sum = sum + data(i)
    end do
    mu = sum / n

    ! Calculate standard deviation (sigma)
    sum_sq = 0.0
    do i = 1, n
        sum_sq = sum_sq + (data(i) - mu)**2
    end do
    sigma = sqrt(sum_sq / (n - 1))

    ! Output mean and standard deviation
    print *, "Mean (mu): ", mu
    print *, "Standard Deviation (sigma): ", sigma

    ! Calculate and output pdf for each data point
    do i = 1, n
        x = data(i)
        pdf = (1.0 / (sigma * sqrt(2.0 * pi))) * e**(-0.5 * ((x - mu) / sigma)**2)
        print *, "x =", x, ", pdf value =", pdf
    end do

    deallocate(data)
end program bell_curve

       
      
      
        
      
    
  

  
  
  
  
  
  
  
    
    
  

    
     
  

         
        
    
    
  

    
    
    
    
    
    
  






















