.class Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$2;
.super Ljava/lang/Object;
.source "TimeWheelLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->timeSelectedCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;


# direct methods
.method constructor <init>(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$2;->this$0:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$2;->this$0:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->access$400(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)Lcom/tgs/aics/thirdtool/datapicker/contract/OnTimeMeridiemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$2;->this$0:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-static {v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->access$000(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$2;->this$0:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-static {v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->access$100(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$2;->this$0:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-static {v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->access$200(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$2;->this$0:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v4}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->isAnteMeridiem()Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tgs/aics/thirdtool/datapicker/contract/OnTimeMeridiemSelectedListener;->onTimeSelected(IIIZ)V

    return-void
.end method
