.class public Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$TokenResponse;
.super Ljava/lang/Object;
.source "WXHelperT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TokenResponse"
.end annotation


# instance fields
.field public access_token:Ljava/lang/String;

.field public openid:Ljava/lang/String;

.field final synthetic this$0:Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;


# direct methods
.method public constructor <init>(Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$TokenResponse;->this$0:Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
