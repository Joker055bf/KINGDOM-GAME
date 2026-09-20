.class public abstract Lcom/chartboost/sdk/impl/s5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/s5$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:F

.field public e:Lcom/chartboost/sdk/impl/s5$a;

.field public f:Lcom/chartboost/sdk/impl/n5;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Lcom/chartboost/sdk/Mediation;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Mediation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p5}, Lcom/chartboost/sdk/impl/s5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Mediation;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s5;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/chartboost/sdk/impl/s5;->d:F

    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/n5;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s5;->f:Lcom/chartboost/sdk/impl/n5;

    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/s5$a;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s5;->e:Lcom/chartboost/sdk/impl/s5$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s5;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Mediation;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s5;->d(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/impl/s5;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s5;->a(F)V

    .line 4
    invoke-virtual {p0, p3}, Lcom/chartboost/sdk/impl/s5;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p4}, Lcom/chartboost/sdk/impl/s5;->b(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/chartboost/sdk/impl/s5;->c:J

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/s5;->i:Z

    .line 8
    iput-object p5, p0, Lcom/chartboost/sdk/impl/s5;->j:Lcom/chartboost/sdk/Mediation;

    .line 9
    new-instance p1, Lcom/chartboost/sdk/impl/n5;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/n5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s5;->a(Lcom/chartboost/sdk/impl/n5;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/s5;->i:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s5;->h:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/s5;->i:Z

    return v0
.end method

.method public c()F
    .locals 1

    .line 2
    iget v0, p0, Lcom/chartboost/sdk/impl/s5;->d:F

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s5;->b:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s5;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s5;->a:Ljava/lang/String;

    return-void
.end method

.method public e()Lcom/chartboost/sdk/Mediation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s5;->j:Lcom/chartboost/sdk/Mediation;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s5;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s5;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/chartboost/sdk/impl/s5;->c:J

    return-wide v0
.end method

.method public i()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/chartboost/sdk/impl/s5;->c:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public j()Lcom/chartboost/sdk/impl/n5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s5;->f:Lcom/chartboost/sdk/impl/n5;

    return-object v0
.end method

.method public k()Lcom/chartboost/sdk/impl/s5$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s5;->e:Lcom/chartboost/sdk/impl/s5$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrackingEvent{mName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/chartboost/sdk/impl/s5;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLatency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/s5;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s5;->e:Lcom/chartboost/sdk/impl/s5$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s5;->f:Lcom/chartboost/sdk/impl/n5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impressionAdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s5;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s5;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s5;->j:Lcom/chartboost/sdk/Mediation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
