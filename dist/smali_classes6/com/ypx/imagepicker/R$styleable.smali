.class public final Lcom/ypx/imagepicker/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ypx/imagepicker/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BaseVideoView:[I

.field public static final BaseVideoView_enableAudioFocus:I = 0x0

.field public static final BaseVideoView_looping:I = 0x1

.field public static final BaseVideoView_playerBackgroundColor:I = 0x2

.field public static final BaseVideoView_screenScaleType:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ypx/imagepicker/R$styleable;->BaseVideoView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0401ca
        0x7f040319
        0x7f0403bd
        0x7f0403fc
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
