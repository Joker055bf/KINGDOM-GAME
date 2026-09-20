.class public Lcom/openmediation/sdk/core/MetaData;
.super Ljava/lang/Object;


# instance fields
.field private mAgeRestricted:Ljava/lang/Boolean;

.field private mUSPrivacyLimit:Ljava/lang/Boolean;

.field private mUserAge:Ljava/lang/Integer;

.field private mUserConsent:Ljava/lang/Boolean;

.field private mUserGender:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openmediation/sdk/core/MetaData;->mUserConsent:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/openmediation/sdk/core/MetaData;->mAgeRestricted:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/openmediation/sdk/core/MetaData;->mUserAge:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/openmediation/sdk/core/MetaData;->mUserGender:Ljava/lang/String;

    iput-object v0, p0, Lcom/openmediation/sdk/core/MetaData;->mUSPrivacyLimit:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAgeRestricted()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/MetaData;->mAgeRestricted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getGDPRConsent()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/MetaData;->mUserConsent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUSPrivacyLimit()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/MetaData;->mUSPrivacyLimit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUserAge()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/MetaData;->mUserAge:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserGender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/MetaData;->mUserGender:Ljava/lang/String;

    return-object v0
.end method

.method public setAgeRestricted(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/MetaData;->mAgeRestricted:Ljava/lang/Boolean;

    return-void
.end method

.method public setGDPRConsent(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/MetaData;->mUserConsent:Ljava/lang/Boolean;

    return-void
.end method

.method public setUSPrivacyLimit(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/MetaData;->mUSPrivacyLimit:Ljava/lang/Boolean;

    return-void
.end method

.method public setUserAge(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/MetaData;->mUserAge:Ljava/lang/Integer;

    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/MetaData;->mUserGender:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetaData{mUserConsent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/MetaData;->mUserConsent:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAgeRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/MetaData;->mAgeRestricted:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/MetaData;->mUserAge:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserGender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/MetaData;->mUserGender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUSPrivacyLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/MetaData;->mUSPrivacyLimit:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
