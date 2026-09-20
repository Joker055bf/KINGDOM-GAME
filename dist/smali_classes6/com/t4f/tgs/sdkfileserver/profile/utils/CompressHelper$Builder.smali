.class public Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;
.super Ljava/lang/Object;
.source "CompressHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCompressHelper:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;-><init>(Landroid/content/Context;Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$1;)V

    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;->mCompressHelper:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    return-void
.end method


# virtual methods
.method public build()Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;->mCompressHelper:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    return-object v0
.end method

.method public setBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;->mCompressHelper:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    invoke-static {v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->access$402(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;->mCompressHelper:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    invoke-static {v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->access$302(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;Landroid/graphics/Bitmap$CompressFormat;)Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public setDestinationDirectoryPath(Ljava/lang/String;)Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;->mCompressHelper:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    invoke-static {v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->access$602(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;->mCompressHelper:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    invoke-static {v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->access$802(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setFileNamePrefix(Ljava/lang/String;)Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;->mCompressHelper:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    invoke-static {v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->access$702(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setMaxHeight(F)Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;->mCompressHelper:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    invoke-static {v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->access$202(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;F)F

    return-object p0
.end method

.method public setMaxWidth(F)Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;->mCompressHelper:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    invoke-static {v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->access$102(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;F)F

    return-object p0
.end method

.method public setQuality(I)Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;->mCompressHelper:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    invoke-static {v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->access$502(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;I)I

    return-object p0
.end method
