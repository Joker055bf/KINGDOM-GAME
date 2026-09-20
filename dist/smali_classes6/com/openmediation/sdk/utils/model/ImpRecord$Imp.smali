.class public Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;
.super Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/model/ImpRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Imp"
.end annotation


# instance fields
.field private mLastImpTime:J

.field private mPkgName:Ljava/lang/String;

.field private mPlacementId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;-><init>()V

    return-void
.end method


# virtual methods
.method public getLashImpTime()J
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->mLastImpTime:J

    return-wide v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacmentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->mPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public setLashImpTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->mLastImpTime:J

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method public setPlacmentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->mPlacementId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Imp{mPlacementId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mPkgName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mLastImpTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->mLastImpTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
