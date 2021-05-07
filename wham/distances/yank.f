      program averageenergy
      implicit none
      integer::i,j
	  integer,parameter:: nmax=ZZZZ
	  real::col1(nmax),col2(nmax)
	  open(unit=10,file='pullxXXX_YYY.xvg')
      open(unit=11,file='AXXX_DIST_YYY.dat')
      do i=1,nmax
      read(10,*)col1(i),col2(i)
      write(11,*)10*col1(i),10*col2(i)
	  enddo
      close(10)
	  close(11)
      end program