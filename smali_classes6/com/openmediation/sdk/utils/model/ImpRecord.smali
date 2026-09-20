.class public final Lcom/openmediation/sdk/utils/model/ImpRecord;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;,
        Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;
    }
.end annotation


# instance fields
.field private mDayImp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDayImp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/ImpRecord;->mDayImp:Ljava/util/Map;

    return-object v0
.end method

.method public getImpMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/utils/model/ImpRecord;->mImpMap:Ljava/util/Map;

    return-object v0
.end method

.method public setDayImp(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/ImpRecord;->mDayImp:Ljava/util/Map;

    return-void
.end method

.method public setImpMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/ImpRecord;->mImpMap:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImpRecord{mImpMap="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/utils/model/ImpRecord;->mImpMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
