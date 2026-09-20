.class Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->scrollTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1191
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView$1;->this$0:Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1194
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView$1;->this$0:Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView$1;->val$position:I

    invoke-static {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->access$000(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    return-void
.end method
