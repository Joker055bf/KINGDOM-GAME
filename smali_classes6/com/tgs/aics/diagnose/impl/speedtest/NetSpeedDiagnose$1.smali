.class Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;
.super Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;
.source "NetSpeedDiagnose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->doExecute(Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

.field final synthetic val$finalSpeedtest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

.field final synthetic val$onUpdate:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

.field final synthetic val$result:Lcom/tgs/aics/diagnose/Result;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->val$result:Lcom/tgs/aics/diagnose/Result;

    iput-object p3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->val$onUpdate:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->val$finalSpeedtest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerSelected(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Fail diagnose net speed check while NONE server available."

    .line 81
    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->val$result:Lcom/tgs/aics/diagnose/Result;

    invoke-virtual {p1, v0}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    const-string v0, "NONE server available."

    invoke-virtual {p1, v0}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 83
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->val$onUpdate:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->val$result:Lcom/tgs/aics/diagnose/Result;

    invoke-interface {p1, v0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->val$finalSpeedtest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->getTestPoints()[Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 87
    array-length v1, p1

    if-gtz v1, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, p1, v0

    .line 96
    invoke-virtual {v3}, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getPing()F

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_3
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->val$finalSpeedtest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->val$result:Lcom/tgs/aics/diagnose/Result;

    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->val$onUpdate:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->access$000(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;Ljava/util/List;Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "Fail diagnose net speed check while server list empty."

    .line 88
    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->val$result:Lcom/tgs/aics/diagnose/Result;

    invoke-virtual {p1, v0}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    const-string v0, "Server list empty."

    invoke-virtual {p1, v0}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 90
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->val$onUpdate:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$1;->val$result:Lcom/tgs/aics/diagnose/Result;

    invoke-interface {p1, v0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method
