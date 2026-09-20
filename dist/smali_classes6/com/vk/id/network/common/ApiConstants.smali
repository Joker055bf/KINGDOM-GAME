.class public final Lcom/vk/id/network/common/ApiConstants;
.super Ljava/lang/Object;
.source "ApiConstants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vk/id/network/common/ApiConstants;",
        "",
        "<init>",
        "()V",
        "FIELD_API_VERSION",
        "",
        "API_VERSION_VALUE",
        "network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final API_VERSION_VALUE:Ljava/lang/String; = "5.220"

.field public static final FIELD_API_VERSION:Ljava/lang/String; = "v"

.field public static final INSTANCE:Lcom/vk/id/network/common/ApiConstants;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/id/network/common/ApiConstants;

    invoke-direct {v0}, Lcom/vk/id/network/common/ApiConstants;-><init>()V

    sput-object v0, Lcom/vk/id/network/common/ApiConstants;->INSTANCE:Lcom/vk/id/network/common/ApiConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
