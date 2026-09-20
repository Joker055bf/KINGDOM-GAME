.class public final Lcom/vk/id/logger/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final CI_BUILD_NUMBER:Ljava/lang/Integer;

.field public static final CI_BUILD_TYPE:Ljava/lang/String; = ""

.field public static final DEBUG:Z = false

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "com.vk.id.logger"

.field public static final VKID_BUILD_TIME:Ljava/lang/Long;

.field public static final VKID_VERSION_NAME:Ljava/lang/String; = "2.7.1"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x1f

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/vk/id/logger/BuildConfig;->CI_BUILD_NUMBER:Ljava/lang/Integer;

    const-wide v0, 0x19ee1edf406L

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/vk/id/logger/BuildConfig;->VKID_BUILD_TIME:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
