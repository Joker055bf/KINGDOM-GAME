.class Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView$FixingResult;
.super Ljava/lang/Object;
.source "JellyBeanSpanFixTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixingResult"
.end annotation


# instance fields
.field public final fixed:Z

.field public final spansWithSpacesAfter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final spansWithSpacesBefore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView$FixingResult;->fixed:Z

    .line 66
    iput-object p2, p0, Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView$FixingResult;->spansWithSpacesBefore:Ljava/util/List;

    .line 67
    iput-object p3, p0, Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView$FixingResult;->spansWithSpacesAfter:Ljava/util/List;

    return-void
.end method

.method public static fixed(Ljava/util/List;Ljava/util/List;)Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView$FixingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView$FixingResult;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView$FixingResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView$FixingResult;-><init>(ZLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static notFixed()Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView$FixingResult;
    .locals 3

    .line 60
    new-instance v0, Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView$FixingResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView$FixingResult;-><init>(ZLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method
