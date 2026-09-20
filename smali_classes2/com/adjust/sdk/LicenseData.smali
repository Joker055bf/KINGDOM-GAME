.class public Lcom/adjust/sdk/LicenseData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final responseCode:I

.field private final signature:Ljava/lang/String;

.field private final signedData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/adjust/sdk/LicenseData;->signedData:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/adjust/sdk/LicenseData;->signature:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/adjust/sdk/LicenseData;->responseCode:I

    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/adjust/sdk/LicenseData;->responseCode:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/LicenseData;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/LicenseData;->signedData:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/LicenseData;->signedData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/adjust/sdk/LicenseData;->signature:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adjust/sdk/LicenseData;->signature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method
