.class public Lcom/ypx/imagepicker/widget/cropimage/CropImageView;
.super Landroid/widget/ImageView;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;,
        Lcom/ypx/imagepicker/widget/cropimage/CropImageView$onImageLoadListener;,
        Lcom/ypx/imagepicker/widget/cropimage/CropImageView$ClipCalculate;,
        Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;
    }
.end annotation


# static fields
.field private static final ANIM_DURING:I = 0x154

.field private static final MAX_SCALE:F = 2.5f

.field private static final MIN_ROTATE:I = 0x23

.field private static loadMaxSize:I


# instance fields
.field private MAX_FLING_OVER_SCROLL:I

.field private MAX_OVER_RESISTANCE:I

.field private aspectX:I

.field private aspectY:I

.field baseScale:F

.field private canRotate:Z

.field private canShowTouchLine:Z

.field private cropAnim:Landroid/animation/ValueAnimator;

.field private cropMargin:I

.field private cropRectPaint:Landroid/graphics/Paint;

.field private cropStrokePaint:Landroid/graphics/Paint;

.field private hasDrawable:Z

.field private hasMultiTouch:Z

.field private hasOverTranslate:Z

.field private imgLargeHeight:Z

.field private imgLargeWidth:Z

.field private isBounceEnable:Z

.field private isCircle:Z

.field private isEnable:Z

.field private isKnowSize:Z

.field private isRotateEnable:Z

.field private isShowCropRect:Z

.field private isShowImageRectLine:Z

.field private isShowLine:Z

.field private isZoomUp:Z

.field private linePaint:Landroid/graphics/Paint;

.field private mAnimDuring:I

.field private mAnimMatrix:Landroid/graphics/Matrix;

.field private mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseRect:Landroid/graphics/RectF;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mClickRunnable:Ljava/lang/Runnable;

.field private mClip:Landroid/graphics/RectF;

.field private mCommonRect:Landroid/graphics/RectF;

.field private mCompleteCallBack:Ljava/lang/Runnable;

.field private mCropRect:Landroid/graphics/RectF;

.field private mDegrees:F

.field private mDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mImgRect:Landroid/graphics/RectF;

.field private mLongClick:Landroid/view/View$OnLongClickListener;

.field private mMaxScale:F

.field private mMinRotate:I

.field private mRotateCenter:Landroid/graphics/PointF;

.field private mRotateDetector:Lcom/ypx/imagepicker/widget/cropimage/RotateGestureDetector;

.field private mRotateFlag:F

.field private mRotateListener:Lcom/ypx/imagepicker/widget/cropimage/RotateGestureDetector$OnRotateListener;

.field private mScale:F

.field private mScaleCenter:Landroid/graphics/PointF;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScreenCenter:Landroid/graphics/PointF;

.field private mSynthesisMatrix:Landroid/graphics/Matrix;

.field private mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpRect:Landroid/graphics/RectF;

.field private mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

.field private mTranslateX:I

.field private mTranslateY:I

.field private maskPaint:Landroid/graphics/Paint;

.field onImageLoadListener:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$onImageLoadListener;

.field private originalBitmap:Landroid/graphics/Bitmap;

.field private path:Landroid/graphics/Path;

.field private restoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

.field private viewDrawingRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->MAX_FLING_OVER_SCROLL:I

    .line 57
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->MAX_OVER_RESISTANCE:I

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 69
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 75
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isEnable:Z

    .line 76
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isRotateEnable:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 86
    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    .line 92
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpRect:Landroid/graphics/RectF;

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCommonRect:Landroid/graphics/RectF;

    .line 96
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    .line 97
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    .line 98
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateCenter:Landroid/graphics/PointF;

    .line 102
    new-instance v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowCropRect:Z

    const/4 v1, -0x1

    .line 508
    iput v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectX:I

    iput v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectY:I

    .line 509
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropMargin:I

    .line 592
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowLine:Z

    .line 629
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->viewDrawingRect:Landroid/graphics/Rect;

    .line 630
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->path:Landroid/graphics/Path;

    .line 648
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowImageRectLine:Z

    .line 649
    iput-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->canShowTouchLine:Z

    .line 650
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isCircle:Z

    .line 800
    iput-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isBounceEnable:Z

    .line 858
    new-instance p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateListener:Lcom/ypx/imagepicker/widget/cropimage/RotateGestureDetector$OnRotateListener;

    .line 874
    new-instance p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$3;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$3;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 940
    new-instance p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$4;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$4;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mClickRunnable:Ljava/lang/Runnable;

    .line 949
    new-instance p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 113
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->MAX_FLING_OVER_SCROLL:I

    .line 57
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->MAX_OVER_RESISTANCE:I

    .line 59
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    .line 61
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    .line 62
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 69
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 75
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isEnable:Z

    .line 76
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isRotateEnable:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 86
    iput p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    .line 90
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 91
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    .line 92
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    .line 93
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpRect:Landroid/graphics/RectF;

    .line 94
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCommonRect:Landroid/graphics/RectF;

    .line 96
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    .line 97
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    .line 98
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateCenter:Landroid/graphics/PointF;

    .line 102
    new-instance p2, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    invoke-direct {p2, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    const/4 p2, 0x1

    .line 109
    iput-boolean p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowCropRect:Z

    const/4 v0, -0x1

    .line 508
    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectX:I

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectY:I

    .line 509
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropMargin:I

    .line 592
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowLine:Z

    .line 629
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->viewDrawingRect:Landroid/graphics/Rect;

    .line 630
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->path:Landroid/graphics/Path;

    .line 648
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowImageRectLine:Z

    .line 649
    iput-boolean p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->canShowTouchLine:Z

    .line 650
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isCircle:Z

    .line 800
    iput-boolean p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isBounceEnable:Z

    .line 858
    new-instance p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateListener:Lcom/ypx/imagepicker/widget/cropimage/RotateGestureDetector$OnRotateListener;

    .line 874
    new-instance p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$3;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$3;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 940
    new-instance p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$4;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$4;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mClickRunnable:Ljava/lang/Runnable;

    .line 949
    new-instance p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 118
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->MAX_FLING_OVER_SCROLL:I

    .line 57
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->MAX_OVER_RESISTANCE:I

    .line 59
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    .line 61
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    .line 62
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 69
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 75
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isEnable:Z

    .line 76
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isRotateEnable:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 86
    iput p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    .line 90
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 91
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    .line 92
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    .line 93
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpRect:Landroid/graphics/RectF;

    .line 94
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCommonRect:Landroid/graphics/RectF;

    .line 96
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    .line 97
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    .line 98
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateCenter:Landroid/graphics/PointF;

    .line 102
    new-instance p2, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    invoke-direct {p2, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    const/4 p2, 0x1

    .line 109
    iput-boolean p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowCropRect:Z

    const/4 p3, -0x1

    .line 508
    iput p3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectX:I

    iput p3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectY:I

    .line 509
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropMargin:I

    .line 592
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowLine:Z

    .line 629
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->viewDrawingRect:Landroid/graphics/Rect;

    .line 630
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->path:Landroid/graphics/Path;

    .line 648
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowImageRectLine:Z

    .line 649
    iput-boolean p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->canShowTouchLine:Z

    .line 650
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isCircle:Z

    .line 800
    iput-boolean p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isBounceEnable:Z

    .line 858
    new-instance p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$2;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateListener:Lcom/ypx/imagepicker/widget/cropimage/RotateGestureDetector$OnRotateListener;

    .line 874
    new-instance p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$3;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$3;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 940
    new-instance p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$4;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$4;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mClickRunnable:Ljava/lang/Runnable;

    .line 949
    new-instance p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$5;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 123
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->restoreCrop()V

    return-void
.end method

.method static synthetic access$100(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateFlag:F

    return p0
.end method

.method static synthetic access$1000(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateFlag:F

    return p1
.end method

.method static synthetic access$1100(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mLongClick:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$116(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)F
    .locals 1

    .line 46
    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateFlag:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateFlag:F

    return v0
.end method

.method static synthetic access$1200(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->hasOverTranslate:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->hasOverTranslate:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->hasMultiTouch:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->hasMultiTouch:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mClickRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->imgLargeWidth:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->imgLargeHeight:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->canRotate:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateX:I

    return p0
.end method

.method static synthetic access$2002(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateX:I

    return p1
.end method

.method static synthetic access$2012(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;I)I
    .locals 1

    .line 46
    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateX:I

    return v0
.end method

.method static synthetic access$202(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->canRotate:Z

    return p1
.end method

.method static synthetic access$2020(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;I)I
    .locals 1

    .line 46
    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateX:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateX:I

    return v0
.end method

.method static synthetic access$2024(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)I
    .locals 1

    .line 46
    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateX:I

    return p1
.end method

.method static synthetic access$2100(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isBounceEnable:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->checkRect()V

    return-void
.end method

.method static synthetic access$2300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCommonRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;FF)F
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->resistanceScrollByX(FF)F

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    return p0
.end method

.method static synthetic access$2502(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    return p1
.end method

.method static synthetic access$2512(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;I)I
    .locals 1

    .line 46
    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    return v0
.end method

.method static synthetic access$2520(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;I)I
    .locals 1

    .line 46
    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    return v0
.end method

.method static synthetic access$2524(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)I
    .locals 1

    .line 46
    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    return p1
.end method

.method static synthetic access$2600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;FF)F
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->resistanceScrollByY(FF)F

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateCenter:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    return p0
.end method

.method static synthetic access$3000(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    return p1
.end method

.method static synthetic access$3100(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Landroid/graphics/RectF;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->doTranslateReset(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$316(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)F
    .locals 1

    .line 46
    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    return v0
.end method

.method static synthetic access$3200(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isZoomUp:Z

    return p0
.end method

.method static synthetic access$3202(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isZoomUp:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimDuring:I

    return p0
.end method

.method static synthetic access$3500(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->MAX_FLING_OVER_SCROLL:I

    return p0
.end method

.method static synthetic access$3600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mClip:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mClip:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectX:I

    return p0
.end method

.method static synthetic access$3800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectY:I

    return p0
.end method

.method static synthetic access$3900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCompleteCallBack:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCompleteCallBack:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowCropRect:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowLine:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mMinRotate:I

    return p0
.end method

.method static synthetic access$600(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    return p0
.end method

.method static synthetic access$602(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    return p1
.end method

.method static synthetic access$632(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;F)F
    .locals 1

    .line 46
    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    return v0
.end method

.method static synthetic access$700(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mMaxScale:F

    return p0
.end method

.method static synthetic access$800(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->executeTranslate()V

    return-void
.end method

.method private anim(FFFF)V
    .locals 13

    move-object v10, p0

    move v2, p1

    move v4, p2

    move/from16 v6, p3

    move/from16 v8, p4

    .line 1524
    iget-object v0, v10, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 1525
    iget-object v0, v10, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    .line 1526
    iget-object v0, v10, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->right:F

    .line 1527
    iget-object v0, v10, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x0

    cmpl-float v1, v7, v0

    if-eqz v1, :cond_2

    cmpl-float v0, v9, v0

    if-eqz v0, :cond_2

    cmpl-float v0, v3, v2

    if-nez v0, :cond_0

    cmpl-float v0, v9, v8

    if-nez v0, :cond_0

    cmpl-float v0, v7, v6

    if-nez v0, :cond_0

    cmpl-float v0, v5, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 1541
    :cond_0
    iget-object v0, v10, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1542
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v11, 0x190

    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v10, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropAnim:Landroid/animation/ValueAnimator;

    .line 1543
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1545
    :cond_1
    iget-object v0, v10, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1546
    iget-object v0, v10, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1547
    iget-object v11, v10, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropAnim:Landroid/animation/ValueAnimator;

    new-instance v12, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move v4, p2

    move/from16 v6, p3

    move/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$7;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;FFFFFFFF)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1560
    iget-object v0, v10, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$8;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$8;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1568
    iget-object v0, v10, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1535
    :cond_2
    :goto_0
    iget-object v0, v10, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1536
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initBase()V

    .line 1537
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->invalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkRect()V
    .locals 3

    .line 935
    iget-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->hasOverTranslate:Z

    if-nez v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCommonRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private createCircleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 1478
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1479
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    .line 1480
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1481
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1482
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p2, :cond_0

    .line 1484
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1486
    :cond_0
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v3, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-nez p2, :cond_1

    .line 1489
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 1491
    :cond_1
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_0
    const/4 p2, 0x0

    .line 1495
    invoke-virtual {v3, p1, p2, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method private doTranslateReset(Landroid/graphics/RectF;)V
    .locals 5

    .line 810
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    .line 811
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    .line 813
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-gtz v0, :cond_1

    .line 814
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isImageCenterWidth(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 815
    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectX:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectY:I

    if-lez v0, :cond_0

    .line 816
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v2

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v4

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_1

    .line 822
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 823
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    :goto_0
    sub-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_1

    .line 824
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 825
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_3
    move v0, v3

    .line 829
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v1, v1

    cmpg-float v1, v4, v1

    if-gtz v1, :cond_5

    .line 830
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isImageCenterHeight(Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 831
    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectX:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectY:I

    if-lez v1, :cond_4

    .line 832
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 834
    :cond_4
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    neg-int v3, p1

    goto :goto_3

    .line 837
    :cond_5
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 838
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    :goto_2
    sub-float/2addr p1, v1

    float-to-int v3, p1

    goto :goto_3

    .line 839
    :cond_6
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 840
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_7
    :goto_3
    if-nez v0, :cond_8

    if-eqz v3, :cond_a

    .line 845
    :cond_8
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    iget-object p1, p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    iget-object p1, p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 846
    :cond_9
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateX:I

    iget v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    neg-int v0, v0

    neg-int v3, v3

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->withTranslate(IIII)V

    :cond_a
    return-void
.end method

.method private drawStrokeLine(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    const/high16 v1, 0x41f00000    # 30.0f

    .line 633
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->dp(F)I

    move-result v1

    .line 634
    iget-object v2, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 635
    iget-object v3, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float v11, v3, v4

    .line 636
    iget-object v3, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v9

    .line 637
    iget-object v3, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v10, v3, v4

    int-to-float v1, v1

    add-float v12, v1, v2

    .line 638
    iget-object v8, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v4, v2

    move v5, v11

    move v6, v12

    move v7, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v13, v11, v1

    .line 639
    iget-object v8, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropStrokePaint:Landroid/graphics/Paint;

    move v6, v2

    move v7, v13

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v20, v11, v10

    sub-float v21, v20, v1

    .line 640
    iget-object v8, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropStrokePaint:Landroid/graphics/Paint;

    move/from16 v5, v20

    move/from16 v7, v21

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 641
    iget-object v8, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropStrokePaint:Landroid/graphics/Paint;

    move v6, v12

    move/from16 v7, v20

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v2, v9

    sub-float v17, v2, v1

    .line 642
    iget-object v10, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v2

    move v7, v11

    move/from16 v8, v17

    move v9, v11

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 643
    iget-object v10, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropStrokePaint:Landroid/graphics/Paint;

    move v8, v2

    move v9, v13

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 644
    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move v15, v2

    move/from16 v16, v20

    move/from16 v18, v20

    move-object/from16 v19, v1

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 645
    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropStrokePaint:Landroid/graphics/Paint;

    move/from16 v17, v2

    move/from16 v18, v21

    move-object/from16 v19, v1

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private executeTranslate()V
    .locals 4

    .line 500
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 501
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 502
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 503
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 504
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->imgLargeWidth:Z

    .line 505
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->imgLargeHeight:Z

    return-void
.end method

.method private static getDrawableHeight(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 343
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    :cond_0
    if-gtz v0, :cond_1

    .line 345
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :cond_1
    return v0
.end method

.method private static getDrawableWidth(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 336
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    :cond_0
    if-gtz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :cond_1
    return v0
.end method

.method private hasSize(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 330
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gtz v0, :cond_2

    .line 331
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    if-gtz v0, :cond_2

    .line 332
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-lez p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private init()V
    .locals 3

    .line 127
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 129
    :cond_0
    new-instance v0, Lcom/ypx/imagepicker/widget/cropimage/RotateGestureDetector;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateListener:Lcom/ypx/imagepicker/widget/cropimage/RotateGestureDetector$OnRotateListener;

    invoke-direct {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/RotateGestureDetector;-><init>(Lcom/ypx/imagepicker/widget/cropimage/RotateGestureDetector$OnRotateListener;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateDetector:Lcom/ypx/imagepicker/widget/cropimage/RotateGestureDetector;

    .line 130
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDetector:Landroid/view/GestureDetector;

    .line 131
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 132
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 133
    iput v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->MAX_FLING_OVER_SCROLL:I

    const/high16 v1, 0x430c0000    # 140.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 134
    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->MAX_OVER_RESISTANCE:I

    const/16 v0, 0x23

    .line 136
    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mMinRotate:I

    const/16 v0, 0x154

    .line 137
    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimDuring:I

    const/high16 v0, 0x40200000    # 2.5f

    .line 138
    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mMaxScale:F

    .line 140
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initCropLineRect()V

    .line 141
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initCropRect()V

    return-void
.end method

.method private initCenter()V
    .locals 4

    .line 422
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 423
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->executeTranslate()V

    .line 424
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->resetBase()V

    return-void
.end method

.method private initCenterCrop()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 429
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    .line 430
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    .line 431
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 432
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->executeTranslate()V

    .line 433
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->resetBase()V

    return-void
.end method

.method private initCenterInside()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initCenter()V

    goto :goto_0

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initFitCenter()V

    .line 443
    :goto_0
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 444
    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mMaxScale:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 445
    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mMaxScale:F

    :cond_1
    return-void
.end method

.method private initCropLineRect()V
    .locals 4

    .line 608
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->linePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 609
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 610
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->linePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 611
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->linePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p0, v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 612
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->linePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 614
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropStrokePaint:Landroid/graphics/Paint;

    .line 615
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 616
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 617
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 618
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 619
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initCropRect()V
    .locals 3

    .line 598
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    .line 599
    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 600
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropRectPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 601
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 602
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropRectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 603
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 604
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initMaskPaint()V

    return-void
.end method

.method private initFitCenter()V
    .locals 5

    .line 450
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 451
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    .line 452
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    .line 453
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 454
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->executeTranslate()V

    .line 455
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->resetBase()V

    .line 457
    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mMaxScale:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 458
    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mMaxScale:F

    :cond_0
    return-void
.end method

.method private initFitEnd()V
    .locals 3

    .line 472
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initFitCenter()V

    .line 473
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    .line 474
    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    .line 475
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 476
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->executeTranslate()V

    .line 477
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->resetBase()V

    return-void
.end method

.method private initFitStart()V
    .locals 3

    .line 463
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initFitCenter()V

    .line 464
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    .line 465
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 466
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->executeTranslate()V

    .line 467
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->resetBase()V

    .line 468
    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    return-void
.end method

.method private initFitXY()V
    .locals 5

    .line 481
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 482
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    .line 483
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 484
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->executeTranslate()V

    .line 485
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->resetBase()V

    return-void
.end method

.method private initMaskPaint()V
    .locals 2

    .line 623
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->maskPaint:Landroid/graphics/Paint;

    const-string v1, "#a0000000"

    .line 624
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 625
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->maskPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 626
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->maskPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private isImageCenterHeight(Landroid/graphics/RectF;)Z
    .locals 2

    .line 851
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isImageCenterWidth(Landroid/graphics/RectF;)Z
    .locals 2

    .line 855
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    .line 915
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 916
    :goto_0
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_1
    iget v1, p2, Landroid/graphics/RectF;->right:F

    :goto_1
    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 919
    invoke-virtual {p3, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    .line 923
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_3
    iget v2, p2, Landroid/graphics/RectF;->top:F

    .line 924
    :goto_2
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_4
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    :goto_3
    cmpl-float p2, v2, p1

    if-lez p2, :cond_5

    .line 927
    invoke-virtual {p3, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    .line 931
    :cond_5
    invoke-virtual {p3, v0, v2, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private onUp()V
    .locals 6

    .line 751
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    iget-boolean v0, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 754
    :cond_0
    iget-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->canRotate:Z

    const/high16 v1, 0x42b40000    # 90.0f

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    rem-float/2addr v0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 755
    :cond_1
    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    div-float v2, v0, v1

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    rem-float v3, v0, v1

    const/high16 v4, 0x42340000    # 45.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    add-float/2addr v2, v1

    goto :goto_0

    :cond_2
    const/high16 v4, -0x3dcc0000    # -45.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    sub-float/2addr v2, v1

    .line 763
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    float-to-int v0, v0

    float-to-int v3, v2

    invoke-virtual {v1, v0, v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->withRotate(II)V

    .line 765
    iput v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    .line 768
    :cond_4
    iget-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isBounceEnable:Z

    if-nez v0, :cond_5

    return-void

    .line 772
    :cond_5
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 773
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 775
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateCenter:Landroid/graphics/PointF;

    invoke-virtual {v4, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 777
    iget v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    cmpg-float v5, v4, v1

    if-gez v5, :cond_6

    .line 778
    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    invoke-virtual {v5, v4, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->withScale(FF)V

    .line 779
    iput v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    goto :goto_1

    .line 780
    :cond_6
    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mMaxScale:F

    cmpl-float v5, v4, v1

    if-lez v5, :cond_7

    .line 781
    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    invoke-virtual {v5, v4, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->withScale(FF)V

    .line 782
    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mMaxScale:F

    iput v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    .line 785
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v1, 0x0

    .line 786
    iput v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateX:I

    .line 787
    iput v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    .line 789
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 790
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 791
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v3

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v3

    sub-float v3, v2, v5

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 792
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 793
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 794
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 796
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTmpRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->doTranslateReset(Landroid/graphics/RectF;)V

    .line 797
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->start()V

    return-void
.end method

.method private resetBase()V
    .locals 4

    .line 489
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 491
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 492
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 493
    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    const/4 v0, 0x0

    .line 494
    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateX:I

    .line 495
    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    .line 496
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method private resetCropSize(II)V
    .locals 10

    int-to-float v0, p1

    int-to-float v1, p2

    .line 547
    iget v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectY:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    iget v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectX:I

    if-eq v5, v4, :cond_3

    int-to-float v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    int-to-float v2, v2

    div-float/2addr v4, v2

    mul-float v2, v0, v5

    div-float/2addr v2, v1

    if-le p2, p1, :cond_2

    .line 551
    iget v6, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropMargin:I

    mul-int/lit8 v7, v6, 0x2

    sub-int/2addr p1, v7

    int-to-float p1, p1

    mul-float/2addr p1, v5

    div-float/2addr p1, v4

    sub-float p1, v1, p1

    mul-float/2addr p1, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr p1, v7

    cmpl-float v8, v4, v5

    if-ltz v8, :cond_0

    :goto_0
    int-to-float v3, v6

    sub-float/2addr v0, v3

    sub-float/2addr v1, p1

    goto :goto_1

    :cond_0
    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v3, v6

    sub-float/2addr v1, v3

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr p2, v6

    int-to-float p1, p2

    mul-float/2addr p1, v4

    sub-float p1, v0, p1

    div-float/2addr p1, v7

    sub-float/2addr v0, p1

    move v9, v3

    move v3, p1

    move p1, v9

    goto :goto_1

    :cond_2
    move p1, v3

    .line 572
    :goto_1
    invoke-direct {p0, v3, p1, v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->anim(FFFF)V

    goto :goto_2

    .line 574
    :cond_3
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 575
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initBase()V

    :goto_2
    return-void
.end method

.method private resistanceScrollByX(FF)F
    .locals 1

    .line 902
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->MAX_OVER_RESISTANCE:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->MAX_OVER_RESISTANCE:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float/2addr p2, p1

    return p2
.end method

.method private resistanceScrollByY(FF)F
    .locals 1

    .line 906
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->MAX_OVER_RESISTANCE:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->MAX_OVER_RESISTANCE:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float/2addr p2, p1

    return p2
.end method

.method private restoreCrop()V
    .locals 9

    .line 282
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->restoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    const/4 v1, 0x0

    .line 284
    iput v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateX:I

    .line 285
    iput v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslateY:I

    if-eqz v0, :cond_2

    .line 287
    iget-object v2, v0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mImgRect:Landroid/graphics/RectF;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 291
    :cond_0
    iget-object v2, v0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mImgRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, v0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 292
    iget-object v3, v0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mImgRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v5, v0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 294
    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v4

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 295
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateCenter:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 298
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    neg-float v5, v5

    iget-object v6, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 299
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 302
    iget-object v4, v0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v4, v5

    .line 303
    iget-object v5, v0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v6, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v5, v6

    cmpl-float v6, v4, v5

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    .line 306
    :goto_0
    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    iget-object v7, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 307
    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 309
    iget v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    iput v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    .line 311
    iget-object v5, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    iget-object v6, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v6

    float-to-int v2, v2

    iget-object v6, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v5, v1, v1, v2, v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->withTranslate(IIII)V

    .line 312
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    iget v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    invoke-virtual {v1, v2, v4}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->withScale(FF)V

    .line 313
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    iget v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    float-to-int v2, v2

    iget v0, v0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mDegrees:F

    float-to-int v0, v0

    iget v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimDuring:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->withRotate(III)V

    .line 314
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mTranslate:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$Transform;->start()V

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->restoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 1

    .line 1117
    iget-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isEnable:Z

    if-nez v0, :cond_0

    .line 1118
    invoke-super {p0, p1}, Landroid/widget/ImageView;->canScrollHorizontally(I)Z

    move-result p1

    return p1

    .line 1120
    :cond_0
    iget-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->hasMultiTouch:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    int-to-float p1, p1

    .line 1121
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->canScrollHorizontallySelf(F)Z

    move-result p1

    return p1
.end method

.method public canScrollHorizontallySelf(F)Z
    .locals 4

    .line 1102
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    .line 1103
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    return v1

    :cond_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1105
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float p1, v0, p1

    if-lez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .line 1126
    iget-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isEnable:Z

    if-nez v0, :cond_0

    .line 1127
    invoke-super {p0, p1}, Landroid/widget/ImageView;->canScrollVertically(I)Z

    move-result p1

    return p1

    .line 1129
    :cond_0
    iget-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->hasMultiTouch:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    int-to-float p1, p1

    .line 1130
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->canScrollVerticallySelf(F)Z

    move-result p1

    return p1
.end method

.method public canScrollVerticallySelf(F)Z
    .locals 4

    .line 1109
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    .line 1110
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    return v1

    :cond_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1112
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, v0, p1

    if-lez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public changeSize(ZII)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1573
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getWidth()I

    move-result v3

    .line 1574
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getHeight()I

    move-result v5

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 1575
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1576
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1577
    new-instance v6, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$9;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;IIII)V

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1588
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1590
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1591
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1592
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1593
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 726
    iget-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isEnable:Z

    if-eqz v0, :cond_5

    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    iput-boolean v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->hasMultiTouch:Z

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 731
    iget-boolean v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isRotateEnable:Z

    if-eqz v1, :cond_1

    .line 732
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateDetector:Lcom/ypx/imagepicker/widget/cropimage/RotateGestureDetector;

    invoke-virtual {v1, p1}, Lcom/ypx/imagepicker/widget/cropimage/RotateGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    if-nez v0, :cond_2

    .line 736
    iput-boolean v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowLine:Z

    .line 737
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->invalidate()V

    goto :goto_0

    :cond_2
    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_4

    .line 739
    :cond_3
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->onUp()V

    const/4 p1, 0x0

    .line 740
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowLine:Z

    .line 741
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->invalidate()V

    :cond_4
    :goto_0
    return v3

    .line 746
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dp(F)I
    .locals 4

    .line 1516
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mClip:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/4 v0, 0x0

    .line 719
    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mClip:Landroid/graphics/RectF;

    .line 721
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isEnable:Z

    return-void
.end method

.method public generateCropBitmap()Landroid/graphics/Bitmap;
    .locals 11

    .line 1408
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1412
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getTranslateX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1414
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getTranslateY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1416
    iget v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    .line 1418
    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1420
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v6, v3, v5

    int-to-float v4, v4

    mul-float v7, v4, v5

    div-float/2addr v6, v7

    .line 1429
    iget-object v7, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 1430
    iget-object v8, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float v9, v7, v5

    mul-float v10, v8, v5

    div-float/2addr v9, v10

    cmpg-float v6, v6, v9

    if-gez v6, :cond_1

    div-float v6, v3, v2

    div-float v8, v6, v9

    mul-float/2addr v0, v3

    mul-float/2addr v7, v2

    mul-float/2addr v7, v5

    div-float/2addr v0, v7

    mul-float/2addr v1, v3

    div-float/2addr v1, v7

    goto :goto_0

    :cond_1
    div-float v6, v4, v2

    mul-float v7, v9, v6

    mul-float/2addr v0, v4

    mul-float/2addr v8, v2

    mul-float/2addr v8, v5

    div-float/2addr v0, v8

    mul-float/2addr v1, v4

    div-float/2addr v1, v8

    move v8, v6

    move v6, v7

    :goto_0
    add-float v2, v0, v6

    cmpl-float v2, v2, v3

    const/4 v5, 0x0

    if-lez v2, :cond_2

    sub-float v0, v3, v6

    cmpg-float v2, v0, v5

    if-gez v2, :cond_2

    move v0, v5

    :cond_2
    add-float v2, v1, v8

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    sub-float v1, v4, v8

    cmpg-float v2, v1, v5

    if-gez v2, :cond_3

    move v1, v5

    .line 1462
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    float-to-int v0, v0

    float-to-int v1, v1

    float-to-int v3, v6

    float-to-int v4, v8

    invoke-static {v2, v0, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1463
    iget-boolean v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isCircle:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 1464
    invoke-direct {p0, v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->createCircleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/high16 v0, -0x1000000

    .line 1467
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->generateCropBitmapFromView(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public generateCropBitmapFromView(I)Landroid/graphics/Bitmap;
    .locals 5

    .line 1381
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$6;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$6;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1390
    invoke-static {p0}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1392
    :try_start_0
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 1393
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    .line 1392
    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1394
    iget-boolean v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isCircle:Z

    if-eqz v1, :cond_0

    .line 1395
    invoke-direct {p0, v0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->createCircleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getCropHeight()I
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCropWidth()I
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getInfo()Lcom/ypx/imagepicker/widget/cropimage/Info;
    .locals 11

    .line 1364
    new-instance v10, Lcom/ypx/imagepicker/widget/cropimage/Info;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v4

    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectX:I

    int-to-float v5, v0

    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectY:I

    int-to-float v6, v0

    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getTranslateX()F

    move-result v7

    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getTranslateY()F

    move-result v8

    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getScale()F

    move-result v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/ypx/imagepicker/widget/cropimage/Info;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FLjava/lang/String;FFFFF)V

    return-object v10
.end method

.method public getNewScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getOriginalBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getScale()F
    .locals 3

    .line 1509
    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public getTranslateX()F
    .locals 2

    .line 1501
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getTranslateY()F
    .locals 2

    .line 1505
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public initBase()V
    .locals 9

    .line 352
    iget-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->hasDrawable:Z

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    iget-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isKnowSize:Z

    if-nez v0, :cond_1

    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 356
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isZoomUp:Z

    .line 359
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getWidth()I

    move-result v1

    .line 362
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getHeight()I

    move-result v2

    .line 363
    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    .line 364
    invoke-static {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 366
    iget-object v4, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v0

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    sub-int v4, v1, v3

    .line 369
    div-int/lit8 v4, v4, 0x2

    sub-int v7, v2, v0

    .line 370
    div-int/lit8 v7, v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    if-le v3, v1, :cond_2

    int-to-float v1, v1

    div-float/2addr v1, v5

    goto :goto_0

    :cond_2
    move v1, v8

    :goto_0
    if-le v0, v2, :cond_3

    int-to-float v0, v2

    div-float v8, v0, v6

    .line 384
    :cond_3
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->baseScale:F

    .line 386
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 387
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v1, v4

    int-to-float v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 388
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->baseScale:F

    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 389
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 391
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 392
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mRotateCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 394
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->executeTranslate()V

    .line 396
    sget-object v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$10;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 416
    :pswitch_0
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initFitXY()V

    goto :goto_1

    .line 413
    :pswitch_1
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initFitEnd()V

    goto :goto_1

    .line 410
    :pswitch_2
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initFitStart()V

    goto :goto_1

    .line 407
    :pswitch_3
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initFitCenter()V

    goto :goto_1

    .line 404
    :pswitch_4
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initCenterInside()V

    goto :goto_1

    .line 401
    :pswitch_5
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initCenterCrop()V

    goto :goto_1

    .line 398
    :pswitch_6
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initCenter()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEditing()Z
    .locals 1

    .line 530
    iget-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowLine:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    .line 670
    :try_start_0
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    iget-boolean v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowLine:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->canShowTouchLine:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isCircle:Z

    if-nez v1, :cond_5

    .line 679
    iget-boolean v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowImageRectLine:Z

    if-eqz v1, :cond_4

    .line 680
    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    :goto_0
    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    .line 681
    iget-object v2, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-object v2, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    :goto_1
    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    .line 682
    iget-object v3, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget-object v3, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    :goto_2
    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    .line 683
    iget-object v4, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    iget-object v4, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mImgRect:Landroid/graphics/RectF;

    goto :goto_3

    :cond_3
    iget-object v4, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    :goto_3
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    sub-int/2addr v3, v1

    sub-int/2addr v4, v2

    goto :goto_4

    .line 687
    :cond_4
    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v3, v1

    .line 688
    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v4, v1

    .line 689
    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    .line 690
    iget-object v2, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    :goto_4
    move v8, v1

    move v9, v3

    move v10, v4

    int-to-float v11, v8

    int-to-float v1, v9

    const/high16 v12, 0x40400000    # 3.0f

    div-float/2addr v1, v12

    add-float v4, v11, v1

    int-to-float v13, v2

    add-int/2addr v2, v10

    int-to-float v14, v2

    .line 692
    iget-object v6, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    move v3, v13

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v1, v9, 0x2

    int-to-float v1, v1

    div-float/2addr v1, v12

    add-float v4, v11, v1

    .line 693
    iget-object v6, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v10

    div-float/2addr v1, v12

    add-float v5, v13, v1

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 694
    iget-object v6, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v11

    move v3, v5

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v10, v10, 0x2

    int-to-float v1, v10

    div-float/2addr v1, v12

    add-float v5, v13, v1

    .line 695
    iget-object v6, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 698
    :cond_5
    iget-boolean v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowCropRect:Z

    if-eqz v1, :cond_8

    iget v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectY:I

    if-lez v1, :cond_8

    iget v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectX:I

    if-gtz v1, :cond_6

    goto :goto_6

    .line 702
    :cond_6
    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->viewDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 703
    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 704
    iget-boolean v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isCircle:Z

    if-eqz v1, :cond_7

    .line 705
    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v5, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    iget-object v5, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_5

    .line 707
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->drawStrokeLine(Landroid/graphics/Canvas;)V

    .line 708
    iget-object v8, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->path:Landroid/graphics/Path;

    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v9, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v10, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v11, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v12, v1, Landroid/graphics/RectF;->bottom:F

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 710
    :goto_5
    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 711
    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->viewDrawingRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 712
    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    :goto_6
    return-void

    .line 672
    :catch_0
    sget v1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->loadMaxSize:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sput v1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->loadMaxSize:I

    .line 673
    iget-object v1, v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 581
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    const/4 p3, 0x1

    .line 582
    iput-boolean p3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isKnowSize:Z

    .line 583
    iget-object p3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScreenCenter:Landroid/graphics/PointF;

    int-to-float p4, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    int-to-float v1, p2

    div-float/2addr v1, v0

    invoke-virtual {p3, p4, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 584
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->resetCropSize(II)V

    .line 585
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public rotate(F)V
    .locals 4

    .line 1372
    iget v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mDegrees:F

    .line 1373
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1374
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 1376
    iget-object v2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mAnimMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, p1, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1377
    invoke-direct {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->executeTranslate()V

    return-void
.end method

.method public setBounceEnable(Z)V
    .locals 0

    .line 803
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isBounceEnable:Z

    return-void
.end method

.method public setCanShowTouchLine(Z)V
    .locals 0

    .line 663
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->canShowTouchLine:Z

    .line 664
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->invalidate()V

    return-void
.end method

.method public setCircle(Z)V
    .locals 0

    .line 653
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isCircle:Z

    .line 654
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->invalidate()V

    return-void
.end method

.method public setCropMargin(I)V
    .locals 0

    .line 534
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropMargin:I

    return-void
.end method

.method public setCropRatio(II)V
    .locals 2

    .line 512
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectX:I

    .line 513
    iput p2, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectY:I

    .line 514
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->cropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-lez p1, :cond_2

    if-gtz p2, :cond_1

    goto :goto_0

    .line 525
    :cond_1
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 526
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->resetCropSize(II)V

    return-void

    .line 518
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 519
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 520
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initBase()V

    .line 521
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->invalidate()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    .line 209
    sget v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->loadMaxSize:I

    if-nez v0, :cond_1

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->loadMaxSize:I

    .line 213
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->loadMaxSize:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    int-to-float v1, v2

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 215
    invoke-static {p1, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 218
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->loadMaxSize:I

    if-le v1, v2, :cond_3

    int-to-float v1, v2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 219
    invoke-static {p1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 222
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 227
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 230
    iput-boolean v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->hasDrawable:Z

    return-void

    .line 233
    :cond_0
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->hasSize(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 237
    iput-boolean v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->hasDrawable:Z

    .line 238
    iget-object v1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 239
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 240
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 241
    :cond_2
    instance-of v1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_3

    .line 242
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 243
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 244
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    .line 245
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    .line 250
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->onImageLoadListener:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$onImageLoadListener;

    if-eqz v0, :cond_4

    .line 251
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-interface {v0, v1, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$onImageLoadListener;->onImageLoaded(FF)V

    const/4 p1, 0x0

    .line 252
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->onImageLoadListener:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$onImageLoadListener;

    .line 255
    :cond_4
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->restoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    if-eqz p1, :cond_5

    .line 256
    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/cropimage/Info;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 257
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->restoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    iget-object p1, p1, Lcom/ypx/imagepicker/widget/cropimage/Info;->mWidgetRect:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 258
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->restoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    iget p1, p1, Lcom/ypx/imagepicker/widget/cropimage/Info;->mCropX:F

    float-to-int p1, p1

    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectX:I

    .line 259
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->restoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    iget p1, p1, Lcom/ypx/imagepicker/widget/cropimage/Info;->mCropY:F

    float-to-int p1, p1

    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->aspectY:I

    .line 260
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initBase()V

    .line 261
    new-instance p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$1;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$1;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 268
    :cond_5
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initBase()V

    :goto_1
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 192
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMaxScale(F)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mMaxScale:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnImageLoadListener(Lcom/ypx/imagepicker/widget/cropimage/CropImageView$onImageLoadListener;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->onImageLoadListener:Lcom/ypx/imagepicker/widget/cropimage/CropImageView$onImageLoadListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mLongClick:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setRestoreInfo(Lcom/ypx/imagepicker/widget/cropimage/Info;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->restoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    return-void
.end method

.method public setRotateEnable(Z)V
    .locals 0

    .line 589
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isRotateEnable:Z

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 152
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_1

    .line 155
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 156
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initBase()V

    :cond_1
    return-void
.end method

.method public setShowCropRect(Z)V
    .locals 0

    .line 1473
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowCropRect:Z

    .line 1474
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->invalidate()V

    return-void
.end method

.method public setShowImageRectLine(Z)V
    .locals 0

    .line 658
    iput-boolean p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isShowImageRectLine:Z

    .line 659
    invoke-virtual {p0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->invalidate()V

    return-void
.end method
