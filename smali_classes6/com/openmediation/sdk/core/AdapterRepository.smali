.class public Lcom/openmediation/sdk/core/AdapterRepository;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/core/AdapterRepository$AdapterRepositoryHolder;
    }
.end annotation


# static fields
.field private static final KEY_AGE_RESTRICTED:Ljava/lang/String; = "MetaData_AgeRestricted"

.field private static final KEY_GDPR_CONSENT:Ljava/lang/String; = "MetaData_GDPRConsent"

.field private static final KEY_USER_AGE:Ljava/lang/String; = "MetaData_UserAge"

.field private static final KEY_USER_GENDER:Ljava/lang/String; = "MetaData_UserGender"

.field private static final KEY_US_PRIVACY_LIMIT:Ljava/lang/String; = "MetaData_USPrivacyLimit"


# instance fields
.field private mMetaData:Lcom/openmediation/sdk/core/MetaData;

.field private mPolicySettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/openmediation/sdk/core/MetaData;

    invoke-direct {v0}, Lcom/openmediation/sdk/core/MetaData;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mPolicySettings:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/core/AdapterRepository$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AdapterRepository;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/openmediation/sdk/core/AdapterRepository;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/AdapterRepository$AdapterRepositoryHolder;->access$000()Lcom/openmediation/sdk/core/AdapterRepository;

    move-result-object v0

    return-object v0
.end method

.method private saveAgeRestricted()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/MetaData;->getAgeRestricted()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/MetaData;->getAgeRestricted()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "MetaData_AgeRestricted"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private saveGDPRConsent()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/MetaData;->getGDPRConsent()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/MetaData;->getGDPRConsent()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "MetaData_GDPRConsent"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private saveMetaData()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->saveGDPRConsent()V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->saveAgeRestricted()V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->saveUserAge()V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->saveUserGender()V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->saveUSPrivacyLimit()V

    return-void
.end method

.method private saveUSPrivacyLimit()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/MetaData;->getUSPrivacyLimit()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/MetaData;->getUSPrivacyLimit()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "MetaData_USPrivacyLimit"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private saveUserAge()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/MetaData;->getUserAge()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/MetaData;->getUserAge()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MetaData_UserAge"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private saveUserGender()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/MetaData;->getUserGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/MetaData;->getUserGender()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MetaData_UserGender"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setAgeRestricted(Lcom/openmediation/sdk/mediation/CustomAdParams;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/openmediation/sdk/mediation/CustomAdParams;->setAgeRestricted(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private setConsent(Lcom/openmediation/sdk/mediation/CustomAdParams;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/openmediation/sdk/mediation/CustomAdParams;->setGDPRConsent(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private setUSPrivacyLimit(Lcom/openmediation/sdk/mediation/CustomAdParams;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/openmediation/sdk/mediation/CustomAdParams;->setUSPrivacyLimit(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private setUserAge(Lcom/openmediation/sdk/mediation/CustomAdParams;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/openmediation/sdk/mediation/CustomAdParams;->setUserAge(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private setUserGender(Lcom/openmediation/sdk/mediation/CustomAdParams;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/openmediation/sdk/mediation/CustomAdParams;->setUserGender(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAgeRestricted()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/MetaData;->getAgeRestricted()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getGDPRConsent()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/MetaData;->getGDPRConsent()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getMetaData()Lcom/openmediation/sdk/core/MetaData;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    return-object v0
.end method

.method public getPolicySettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mPolicySettings:Ljava/util/Map;

    return-object v0
.end method

.method public getUSPrivacyLimit()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/MetaData;->getUSPrivacyLimit()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getUserAge()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/MetaData;->getUserAge()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getUserGender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/MetaData;->getUserGender()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterMap()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->onPause(Landroid/app/Activity;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterMap()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->onResume(Landroid/app/Activity;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized setAgeRestricted(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/MetaData;->setAgeRestricted(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mPolicySettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "restricted"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->saveAgeRestricted()V

    invoke-static {}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterMap()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    invoke-direct {p0, v3, p1}, Lcom/openmediation/sdk/core/AdapterRepository;->setAgeRestricted(Lcom/openmediation/sdk/mediation/CustomAdParams;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCustomParams(Lcom/openmediation/sdk/mediation/CustomAdParams;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->getGDPRConsent()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/core/AdapterRepository;->setConsent(Lcom/openmediation/sdk/mediation/CustomAdParams;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->getAgeRestricted()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/core/AdapterRepository;->setAgeRestricted(Lcom/openmediation/sdk/mediation/CustomAdParams;Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->getUserAge()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/core/AdapterRepository;->setUserAge(Lcom/openmediation/sdk/mediation/CustomAdParams;I)V

    :cond_3
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->getUserGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/core/AdapterRepository;->setUserGender(Lcom/openmediation/sdk/mediation/CustomAdParams;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->getUSPrivacyLimit()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/core/AdapterRepository;->setUSPrivacyLimit(Lcom/openmediation/sdk/mediation/CustomAdParams;Z)V

    :cond_5
    return-void
.end method

.method public declared-synchronized setGDPRConsent(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/MetaData;->setGDPRConsent(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mPolicySettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "consent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->saveGDPRConsent()V

    invoke-static {}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterMap()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    invoke-direct {p0, v3, p1}, Lcom/openmediation/sdk/core/AdapterRepository;->setConsent(Lcom/openmediation/sdk/mediation/CustomAdParams;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUSPrivacyLimit(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/MetaData;->setUSPrivacyLimit(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mPolicySettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "usPrivacyLimit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->saveUSPrivacyLimit()V

    invoke-static {}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterMap()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    invoke-direct {p0, v3, p1}, Lcom/openmediation/sdk/core/AdapterRepository;->setUSPrivacyLimit(Lcom/openmediation/sdk/mediation/CustomAdParams;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserAge(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/MetaData;->setUserAge(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mPolicySettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "age"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->saveUserAge()V

    invoke-static {}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterMap()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    invoke-direct {p0, v3, p1}, Lcom/openmediation/sdk/core/AdapterRepository;->setUserAge(Lcom/openmediation/sdk/mediation/CustomAdParams;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserGender(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/core/MetaData;->setUserGender(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mPolicySettings:Ljava/util/Map;

    const-string v1, "gender"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->saveUserGender()V

    invoke-static {}, Lcom/openmediation/sdk/utils/AdapterUtil;->getAdapterMap()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/openmediation/sdk/mediation/CustomAdParams;->setUserGender(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized syncMetaData()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/openmediation/sdk/core/AdapterRepository;->saveMetaData()V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "MetaData_GDPRConsent"

    invoke-virtual {v1, v3, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/MetaData;->setGDPRConsent(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v3, "MetaData_AgeRestricted"

    invoke-virtual {v1, v3, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/MetaData;->setAgeRestricted(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "MetaData_UserAge"

    invoke-virtual {v1, v4, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/MetaData;->setUserAge(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v3, "MetaData_UserGender"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/openmediation/sdk/utils/cache/DataCache;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/MetaData;->setUserGender(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AdapterRepository;->mMetaData:Lcom/openmediation/sdk/core/MetaData;

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v3, "MetaData_USPrivacyLimit"

    invoke-virtual {v1, v3, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/MetaData;->setUSPrivacyLimit(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
