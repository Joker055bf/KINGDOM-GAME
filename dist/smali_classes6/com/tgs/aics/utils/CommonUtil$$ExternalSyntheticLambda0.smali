.class public final synthetic Lcom/tgs/aics/utils/CommonUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/listener/IBaseBeanListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/listener/IBaseBeanListener;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/utils/CommonUtil$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/listener/IBaseBeanListener;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/utils/CommonUtil$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/listener/IBaseBeanListener;

    invoke-static {v0, p1}, Lcom/tgs/aics/utils/CommonUtil;->lambda$getAicsServerAddress$0(Lcom/tgs/aics/listener/IBaseBeanListener;Lcom/tgs/aics/bean/BaseBean;)V

    return-void
.end method
