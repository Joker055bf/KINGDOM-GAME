.class Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$AppLovinHolder;
.super Ljava/lang/Object;
.source "AppLovinSingleTon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppLovinHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;-><init>(Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$1;)V

    sput-object v0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$AppLovinHolder;->INSTANCE:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;
    .locals 1

    .line 22
    sget-object v0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$AppLovinHolder;->INSTANCE:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;

    return-object v0
.end method
