.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/listener/ISendMessageListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field public final synthetic f$1:Lcom/scwang/smart/refresh/header/ClassicsHeader;

.field public final synthetic f$2:Lcom/scwang/smart/refresh/layout/api/RefreshLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/scwang/smart/refresh/header/ClassicsHeader;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda10;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda10;->f$1:Lcom/scwang/smart/refresh/header/ClassicsHeader;

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda10;->f$2:Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    return-void
.end method


# virtual methods
.method public final onResult(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 7

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda10;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda10;->f$1:Lcom/scwang/smart/refresh/header/ClassicsHeader;

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda10;->f$2:Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$initView$6$com-tgs-aics-ui-activity-IMActivity(Lcom/scwang/smart/refresh/header/ClassicsHeader;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V

    return-void
.end method
