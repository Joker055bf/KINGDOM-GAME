.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field public final synthetic f$1:Lcom/scwang/smart/refresh/header/ClassicsHeader;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/scwang/smart/refresh/header/ClassicsHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda32;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda32;->f$1:Lcom/scwang/smart/refresh/header/ClassicsHeader;

    return-void
.end method


# virtual methods
.method public final onRefresh(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda32;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda32;->f$1:Lcom/scwang/smart/refresh/header/ClassicsHeader;

    invoke-virtual {v0, v1, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$initView$7$com-tgs-aics-ui-activity-IMActivity(Lcom/scwang/smart/refresh/header/ClassicsHeader;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    return-void
.end method
