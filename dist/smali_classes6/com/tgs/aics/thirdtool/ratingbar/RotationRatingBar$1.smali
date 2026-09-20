.class Lcom/tgs/aics/thirdtool/ratingbar/RotationRatingBar$1;
.super Ljava/lang/Object;
.source "RotationRatingBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/thirdtool/ratingbar/RotationRatingBar;->emptyRatingBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/thirdtool/ratingbar/RotationRatingBar;

.field final synthetic val$partialView:Lcom/tgs/aics/thirdtool/ratingbar/PartialView;


# direct methods
.method constructor <init>(Lcom/tgs/aics/thirdtool/ratingbar/RotationRatingBar;Lcom/tgs/aics/thirdtool/ratingbar/PartialView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/RotationRatingBar$1;->this$0:Lcom/tgs/aics/thirdtool/ratingbar/RotationRatingBar;

    iput-object p2, p0, Lcom/tgs/aics/thirdtool/ratingbar/RotationRatingBar$1;->val$partialView:Lcom/tgs/aics/thirdtool/ratingbar/PartialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/RotationRatingBar$1;->val$partialView:Lcom/tgs/aics/thirdtool/ratingbar/PartialView;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setEmpty()V

    return-void
.end method
