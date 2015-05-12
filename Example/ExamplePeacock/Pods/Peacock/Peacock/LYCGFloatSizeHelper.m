//
//  Created by Michael May on 28/05/2014.
//  Copyright (c) 2014 Lyst. All rights reserved.
//
//  Inspired by Kyle Fuller's work in this area but stripped back and written
//  for just what we need

#import "LYCGFloatSizeHelper.h"
#import "math.h"

CGFloat round64Helper(CGFloat fl)
{
#ifdef __LP64__
    return round(fl);
#else
    return roundf(fl);
#endif
}

CGFloat ceil64Helper(CGFloat fl)
{
#ifdef __LP64__
    return ceil(fl);
#else
    return ceilf(fl);
#endif
}

CGFloat floor64Helper(CGFloat fl)
{
#ifdef __LP64__
    return floor(fl);
#else
    return floorf(fl);
#endif
}

CGFloat fabs64Helper(CGFloat fl)
{
#ifdef __LP64__
    return fabs(fl);
#else
    return fabsf(fl);
#endif
}