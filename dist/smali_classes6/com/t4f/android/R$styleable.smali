.class public final Lcom/t4f/android/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final T4FAlbum_CircleImageView:[I

.field public static final T4FAlbum_CircleImageView_civ_border_color:I = 0x0

.field public static final T4FAlbum_CircleImageView_civ_border_overlay:I = 0x1

.field public static final T4FAlbum_CircleImageView_civ_border_width:I = 0x2

.field public static final T4FAlbum_CircleImageView_civ_fill_color:I = 0x3

.field public static final T4FAlbum_ClipViewLayout:[I

.field public static final T4FAlbum_ClipViewLayout_clipBorderWidth:I = 0x0

.field public static final T4FAlbum_ClipViewLayout_clipType:I = 0x1

.field public static final T4FAlbum_ClipViewLayout_mHorizontalPadding:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4f/android/R$styleable;->T4FAlbum_CircleImageView:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/t4f/android/R$styleable;->T4FAlbum_ClipViewLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0400f3
        0x7f0400f4
        0x7f0400f5
        0x7f0400f6
    .end array-data

    :array_1
    .array-data 4
        0x7f0400f9
        0x7f0400fa
        0x7f04031a
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
