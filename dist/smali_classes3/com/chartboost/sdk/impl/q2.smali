.class public Lcom/chartboost/sdk/impl/q2;
.super Lcom/chartboost/sdk/impl/s5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/q2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Mediation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Mediation;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/chartboost/sdk/impl/s5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Mediation;)V

    .line 2
    sget-object p1, Lcom/chartboost/sdk/impl/s5$a;->c:Lcom/chartboost/sdk/impl/s5$a;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s5;->a(Lcom/chartboost/sdk/impl/s5$a;)V

    return-void
.end method
