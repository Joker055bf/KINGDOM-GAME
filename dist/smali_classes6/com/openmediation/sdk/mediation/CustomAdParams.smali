.class public Lcom/openmediation/sdk/mediation/CustomAdParams;
.super Ljava/lang/Object;


# instance fields
.field protected mAdapterName:Ljava/lang/String;

.field protected mAgeRestricted:Ljava/lang/Boolean;

.field protected mUSPrivacyLimit:Ljava/lang/Boolean;

.field protected mUserAge:Ljava/lang/Integer;

.field protected mUserConsent:Ljava/lang/Boolean;

.field protected mUserGender:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAdapterName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mUserConsent:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAgeRestricted:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mUserAge:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mUserGender:Ljava/lang/String;

    iput-object v0, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mUSPrivacyLimit:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public setAgeRestricted(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mAgeRestricted:Ljava/lang/Boolean;

    return-void
.end method

.method public setGDPRConsent(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mUserConsent:Ljava/lang/Boolean;

    return-void
.end method

.method public setUSPrivacyLimit(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mUSPrivacyLimit:Ljava/lang/Boolean;

    return-void
.end method

.method public setUserAge(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mUserAge:Ljava/lang/Integer;

    return-void
.end method

.method public setUserGender(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/openmediation/sdk/mediation/CustomAdParams;->mUserGender:Ljava/lang/String;

    return-void
.end method
