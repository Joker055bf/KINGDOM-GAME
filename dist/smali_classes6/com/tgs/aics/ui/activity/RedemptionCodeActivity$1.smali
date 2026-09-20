.class Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$1;
.super Ljava/lang/Object;
.source "RedemptionCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$1;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$1;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->finish()V

    return-void
.end method
