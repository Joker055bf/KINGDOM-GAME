.class public Lcom/chartboost/sdk/impl/m4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/privacy/model/DataUseConsent;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/m4;->a:Ljava/util/HashMap;

    .line 3
    iput-object p1, p0, Lcom/chartboost/sdk/impl/m4;->b:Landroid/content/SharedPreferences;

    .line 4
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/m4;->b()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/privacy/model/DataUseConsent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m4;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/chartboost/sdk/privacy/model/DataUseConsent;)Lorg/json/JSONObject;
    .locals 3

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "privacyStandard"

    .line 9
    invoke-interface {p1}, Lcom/chartboost/sdk/privacy/model/DataUseConsent;->getPrivacyStandard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "consent"

    .line 10
    invoke-interface {p1}, Lcom/chartboost/sdk/privacy/model/DataUseConsent;->getConsent()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public final a(Landroid/content/SharedPreferences;Lorg/json/JSONArray;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "privacy_standards"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m4;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/m4;->c()V

    return-void
.end method

.method public final b()V
    .locals 14

    const-string v0, "privacyStandard"

    const-string v1, "consent"

    .line 4
    iget-object v2, p0, Lcom/chartboost/sdk/impl/m4;->b:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_b

    const-string v3, "privacy_standards"

    const-string v4, ""

    .line 5
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 8
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_b

    .line 11
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 12
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 15
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x45e0a519

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v10, v11, :cond_2

    const v11, 0x30579f

    if-eq v10, v11, :cond_1

    const v11, 0x5a73e75

    if-eq v10, v11, :cond_0

    goto :goto_1

    :cond_0
    const-string v10, "coppa"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v12

    goto :goto_2

    :cond_1
    const-string v10, "gdpr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v5

    goto :goto_2

    :cond_2
    const-string/jumbo v10, "us_privacy"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v13

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v10, -0x1

    :goto_2
    if-eqz v10, :cond_7

    if-eq v10, v13, :cond_5

    if-eq v10, v12, :cond_4

    .line 37
    new-instance v9, Lcom/chartboost/sdk/privacy/model/Custom;

    .line 38
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 39
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v10, v7}, Lcom/chartboost/sdk/privacy/model/Custom;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 40
    :cond_4
    new-instance v9, Lcom/chartboost/sdk/privacy/model/COPPA;

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-direct {v9, v7}, Lcom/chartboost/sdk/privacy/model/COPPA;-><init>(Z)V

    goto :goto_3

    .line 41
    :cond_5
    sget-object v7, Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;->OPT_IN_SALE:Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;

    invoke-virtual {v7}, Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 42
    new-instance v9, Lcom/chartboost/sdk/privacy/model/CCPA;

    invoke-direct {v9, v7}, Lcom/chartboost/sdk/privacy/model/CCPA;-><init>(Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;)V

    goto :goto_3

    .line 43
    :cond_6
    sget-object v7, Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;->OPT_OUT_SALE:Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;

    invoke-virtual {v7}, Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 44
    new-instance v9, Lcom/chartboost/sdk/privacy/model/CCPA;

    invoke-direct {v9, v7}, Lcom/chartboost/sdk/privacy/model/CCPA;-><init>(Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;)V

    goto :goto_3

    .line 45
    :cond_7
    sget-object v7, Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;->BEHAVIORAL:Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;

    invoke-virtual {v7}, Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 46
    new-instance v9, Lcom/chartboost/sdk/privacy/model/GDPR;

    invoke-direct {v9, v7}, Lcom/chartboost/sdk/privacy/model/GDPR;-><init>(Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;)V

    goto :goto_3

    .line 47
    :cond_8
    sget-object v7, Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;->NON_BEHAVIORAL:Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;

    invoke-virtual {v7}, Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 48
    new-instance v9, Lcom/chartboost/sdk/privacy/model/GDPR;

    invoke-direct {v9, v7}, Lcom/chartboost/sdk/privacy/model/GDPR;-><init>(Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;)V

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_a

    .line 69
    iget-object v7, p0, Lcom/chartboost/sdk/impl/m4;->a:Ljava/util/HashMap;

    invoke-interface {v9}, Lcom/chartboost/sdk/privacy/model/DataUseConsent;->getPrivacyStandard()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 71
    :cond_a
    new-instance v7, Lcom/chartboost/sdk/impl/i2;

    const-string v9, "consent_persisted_data_reading_error"

    invoke-direct {v7, v9, v8, v4, v4}, Lcom/chartboost/sdk/impl/i2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    const-string v7, "Chartboost"

    .line 72
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load consent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Lcom/chartboost/sdk/impl/i2;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "consent_decoding_error"

    invoke-direct {v1, v3, v2, v4, v4}, Lcom/chartboost/sdk/impl/i2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    .line 77
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_b
    return-void
.end method

.method public b(Lcom/chartboost/sdk/privacy/model/DataUseConsent;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Added privacy standard: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/chartboost/sdk/privacy/model/DataUseConsent;->getPrivacyStandard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with consent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/chartboost/sdk/privacy/model/DataUseConsent;->getConsent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chartboost"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m4;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/chartboost/sdk/privacy/model/DataUseConsent;->getPrivacyStandard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/m4;->c()V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m4;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m4;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/privacy/model/DataUseConsent;

    .line 4
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/m4;->a(Lcom/chartboost/sdk/privacy/model/DataUseConsent;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m4;->b:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/m4;->a(Landroid/content/SharedPreferences;Lorg/json/JSONArray;)V

    :cond_1
    return-void
.end method
