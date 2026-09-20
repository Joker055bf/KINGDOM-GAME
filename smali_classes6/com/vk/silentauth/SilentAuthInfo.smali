.class public final Lcom/vk/silentauth/SilentAuthInfo;
.super Ljava/lang/Object;
.source "SilentAuthInfo.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/silentauth/SilentAuthInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0081\u0008\u0018\u0000 Z2\u00020\u0001:\u0001ZB\u00bd\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0008\u0002\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u001a\u0010\u001bB\u00cb\u0001\u0008\u0017\u0012\u0006\u0010\u001c\u001a\u00020\u0013\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0008\u0002\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u001a\u0010\u001dB\u0011\u0008\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u001f\u00a2\u0006\u0004\u0008\u001a\u0010 J\u0018\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u001f2\u0006\u0010=\u001a\u00020\u0013H\u0016J\u0008\u0010>\u001a\u00020\u0013H\u0016J\u0006\u0010?\u001a\u00020@J\u0006\u0010A\u001a\u00020\u0008J\u000e\u0010B\u001a\u00020\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008CJ\t\u0010D\u001a\u00020\u0005H\u00c6\u0003J\t\u0010E\u001a\u00020\u0005H\u00c6\u0003J\t\u0010F\u001a\u00020\u0008H\u00c6\u0003J\t\u0010G\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010K\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\t\u0010O\u001a\u00020\u0013H\u00c6\u0003J\t\u0010P\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000f\u0010R\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u00c6\u0003J\t\u0010S\u001a\u00020\u0013H\u00c6\u0003J\u00c7\u0001\u0010T\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00052\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u000e\u0008\u0002\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0013H\u00c7\u0001J\u0013\u0010U\u001a\u00020@2\u0008\u0010V\u001a\u0004\u0018\u00010WH\u00d7\u0003J\t\u0010X\u001a\u00020\u0013H\u00d7\u0001J\t\u0010Y\u001a\u00020\u0005H\u00d7\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010$R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010$R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010$R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010$R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010$R\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010$R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010$R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010$R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0011\u0010\u0014\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010$R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010$R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0011\u0010\u0019\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00102R\u0013\u00108\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u00089\u0010$\u00a8\u0006["
    }
    d2 = {
        "Lcom/vk/silentauth/SilentAuthInfo;",
        "Landroid/os/Parcelable;",
        "userId",
        "Lcom/vk/dto/common/id/UserId;",
        "uuid",
        "",
        "token",
        "expireTime",
        "",
        "firstName",
        "photo50",
        "photo100",
        "photo200",
        "lastName",
        "phone",
        "serviceInfo",
        "extras",
        "Landroid/os/Bundle;",
        "weight",
        "",
        "userHash",
        "applicationProviderPackage",
        "providerInfoItems",
        "",
        "Lcom/vk/silentauth/SilentTokenProviderInfo;",
        "providerAppId",
        "<init>",
        "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V",
        "userIdOld",
        "(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vk/dto/common/id/UserId;I)V",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "getUserId$vkid_release",
        "()Lcom/vk/dto/common/id/UserId;",
        "getUuid",
        "()Ljava/lang/String;",
        "getToken",
        "getExpireTime",
        "()J",
        "getFirstName",
        "getPhoto50",
        "getPhoto100",
        "getPhoto200",
        "getLastName",
        "getPhone",
        "getServiceInfo",
        "getExtras",
        "()Landroid/os/Bundle;",
        "getWeight",
        "()I",
        "getUserHash",
        "getApplicationProviderPackage",
        "getProviderInfoItems",
        "()Ljava/util/List;",
        "getProviderAppId",
        "oauthServiceName",
        "getOauthServiceName",
        "writeToParcel",
        "",
        "dest",
        "flags",
        "describeContents",
        "isExchangeUser",
        "",
        "getDistinctId",
        "component1",
        "component1$vkid_release",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "Companion",
        "vkid_release"
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
.field public static final $stable:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/silentauth/SilentAuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/vk/silentauth/SilentAuthInfo$Companion;

.field public static final EMPTY_USER_HASH:Ljava/lang/String; = ""

.field public static final KEY_AVATAR:Ljava/lang/String; = "avatar"

.field public static final KEY_FIRST_NAME:Ljava/lang/String; = "first_name"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_IS_EXCHANGE_USER:Ljava/lang/String; = "isExchangeUser"

.field public static final KEY_LAST_NAME:Ljava/lang/String; = "last_name"

.field public static final KEY_PHONE:Ljava/lang/String; = "phone"

.field public static final KEY_SERVICE:Ljava/lang/String; = "key_service"

.field public static final KEY_SERVICE_NAME:Ljava/lang/String; = "key_service_name"

.field public static final KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final KEY_TTL:Ljava/lang/String; = "ttl"

.field public static final KEY_USER:Ljava/lang/String; = "user"

.field public static final KEY_UUID:Ljava/lang/String; = "uuid"


# instance fields
.field private final applicationProviderPackage:Ljava/lang/String;

.field private final expireTime:J

.field private final extras:Landroid/os/Bundle;

.field private final firstName:Ljava/lang/String;

.field private final lastName:Ljava/lang/String;

.field private final phone:Ljava/lang/String;

.field private final photo100:Ljava/lang/String;

.field private final photo200:Ljava/lang/String;

.field private final photo50:Ljava/lang/String;

.field private final providerAppId:I

.field private final providerInfoItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/silentauth/SilentTokenProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceInfo:Ljava/lang/String;

.field private final token:Ljava/lang/String;

.field private final userHash:Ljava/lang/String;

.field private final userId:Lcom/vk/dto/common/id/UserId;

.field private final uuid:Ljava/lang/String;

.field private final weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/silentauth/SilentAuthInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/silentauth/SilentAuthInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/silentauth/SilentAuthInfo;->Companion:Lcom/vk/silentauth/SilentAuthInfo$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/silentauth/SilentAuthInfo;->$stable:I

    .line 247
    new-instance v0, Lcom/vk/silentauth/SilentAuthInfo$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/vk/silentauth/SilentAuthInfo$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/vk/silentauth/SilentAuthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vk/dto/common/id/UserId;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vk/silentauth/SilentTokenProviderInfo;",
            ">;",
            "Lcom/vk/dto/common/id/UserId;",
            "I)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use constructor with [UserId], current constructor will be hidden in future"
    .end annotation

    const-string v0, "uuid"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firstName"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastName"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userHash"

    move-object/from16 v15, p15

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providerInfoItems"

    move-object/from16 v14, p17

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p18, :cond_0

    .line 101
    new-instance v0, Lcom/vk/dto/common/id/UserId;

    move/from16 v1, p1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/vk/dto/common/id/UserId;-><init>(J)V

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p18

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p19

    .line 100
    invoke-direct/range {v1 .. v19}, Lcom/vk/silentauth/SilentAuthInfo;-><init>(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vk/dto/common/id/UserId;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x10

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v10, v3

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v11, v3

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move-object v12, v3

    goto :goto_3

    :cond_3
    move-object/from16 v12, p9

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move-object v13, v2

    goto :goto_4

    :cond_4
    move-object/from16 v13, p10

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move-object v14, v3

    goto :goto_5

    :cond_5
    move-object/from16 v14, p11

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    move-object v15, v3

    goto :goto_6

    :cond_6
    move-object/from16 v15, p12

    :goto_6
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    move-object/from16 v16, v3

    goto :goto_7

    :cond_7
    move-object/from16 v16, p13

    :goto_7
    and-int/lit16 v1, v0, 0x1000

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    move/from16 v17, v4

    goto :goto_8

    :cond_8
    move/from16 v17, p14

    :goto_8
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_9

    move-object/from16 v18, v2

    goto :goto_9

    :cond_9
    move-object/from16 v18, p15

    :goto_9
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_a

    move-object/from16 v19, v3

    goto :goto_a

    :cond_a
    move-object/from16 v19, p16

    :goto_a
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    .line 97
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_b

    :cond_b
    move-object/from16 v20, p17

    :goto_b
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move-object/from16 v21, v3

    goto :goto_c

    :cond_c
    move-object/from16 v21, p18

    :goto_c
    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    move/from16 v22, v4

    goto :goto_d

    :cond_d
    move/from16 v22, p19

    :goto_d
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    .line 80
    invoke-direct/range {v3 .. v22}, Lcom/vk/silentauth/SilentAuthInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vk/dto/common/id/UserId;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "parcel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 135
    const-class v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/os/Bundle;

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    move-object/from16 v17, v1

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    check-cast v1, Ljava/util/List;

    move-object/from16 v19, v1

    .line 142
    const-class v2, Lcom/vk/silentauth/SilentTokenProviderInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 144
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 145
    const-class v1, Lcom/vk/dto/common/id/UserId;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/vk/dto/common/id/UserId;

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    move-object/from16 v2, p0

    .line 123
    invoke-direct/range {v2 .. v21}, Lcom/vk/silentauth/SilentAuthInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vk/dto/common/id/UserId;I)V

    return-void
.end method

.method public constructor <init>(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vk/silentauth/SilentTokenProviderInfo;",
            ">;I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object/from16 v5, p10

    move-object/from16 v6, p15

    move-object/from16 v7, p17

    const-string v8, "userId"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "uuid"

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "token"

    invoke-static {p3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "firstName"

    invoke-static {p6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "lastName"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "userHash"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "providerInfoItems"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, v0, Lcom/vk/silentauth/SilentAuthInfo;->userId:Lcom/vk/dto/common/id/UserId;

    .line 62
    iput-object v2, v0, Lcom/vk/silentauth/SilentAuthInfo;->uuid:Ljava/lang/String;

    .line 63
    iput-object v3, v0, Lcom/vk/silentauth/SilentAuthInfo;->token:Ljava/lang/String;

    move-wide v1, p4

    .line 64
    iput-wide v1, v0, Lcom/vk/silentauth/SilentAuthInfo;->expireTime:J

    .line 65
    iput-object v4, v0, Lcom/vk/silentauth/SilentAuthInfo;->firstName:Ljava/lang/String;

    move-object/from16 v1, p7

    .line 66
    iput-object v1, v0, Lcom/vk/silentauth/SilentAuthInfo;->photo50:Ljava/lang/String;

    move-object/from16 v1, p8

    .line 67
    iput-object v1, v0, Lcom/vk/silentauth/SilentAuthInfo;->photo100:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 68
    iput-object v1, v0, Lcom/vk/silentauth/SilentAuthInfo;->photo200:Ljava/lang/String;

    .line 69
    iput-object v5, v0, Lcom/vk/silentauth/SilentAuthInfo;->lastName:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 70
    iput-object v1, v0, Lcom/vk/silentauth/SilentAuthInfo;->phone:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 71
    iput-object v1, v0, Lcom/vk/silentauth/SilentAuthInfo;->serviceInfo:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 72
    iput-object v1, v0, Lcom/vk/silentauth/SilentAuthInfo;->extras:Landroid/os/Bundle;

    move/from16 v1, p14

    .line 73
    iput v1, v0, Lcom/vk/silentauth/SilentAuthInfo;->weight:I

    .line 74
    iput-object v6, v0, Lcom/vk/silentauth/SilentAuthInfo;->userHash:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 75
    iput-object v1, v0, Lcom/vk/silentauth/SilentAuthInfo;->applicationProviderPackage:Ljava/lang/String;

    .line 76
    iput-object v7, v0, Lcom/vk/silentauth/SilentAuthInfo;->providerInfoItems:Ljava/util/List;

    move/from16 v1, p18

    .line 77
    iput v1, v0, Lcom/vk/silentauth/SilentAuthInfo;->providerAppId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x10

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v10, v3

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v11, v3

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move-object v12, v3

    goto :goto_3

    :cond_3
    move-object/from16 v12, p9

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move-object v13, v2

    goto :goto_4

    :cond_4
    move-object/from16 v13, p10

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move-object v14, v3

    goto :goto_5

    :cond_5
    move-object/from16 v14, p11

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    move-object v15, v3

    goto :goto_6

    :cond_6
    move-object/from16 v15, p12

    :goto_6
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    move-object/from16 v16, v3

    goto :goto_7

    :cond_7
    move-object/from16 v16, p13

    :goto_7
    and-int/lit16 v1, v0, 0x1000

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    move/from16 v17, v4

    goto :goto_8

    :cond_8
    move/from16 v17, p14

    :goto_8
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_9

    move-object/from16 v18, v2

    goto :goto_9

    :cond_9
    move-object/from16 v18, p15

    :goto_9
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_a

    move-object/from16 v19, v3

    goto :goto_a

    :cond_a
    move-object/from16 v19, p16

    :goto_a
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    .line 76
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_b

    :cond_b
    move-object/from16 v20, p17

    :goto_b
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    move/from16 v21, v4

    goto :goto_c

    :cond_c
    move/from16 v21, p18

    :goto_c
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    .line 60
    invoke-direct/range {v3 .. v21}, Lcom/vk/silentauth/SilentAuthInfo;-><init>(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vk/silentauth/SilentAuthInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IILjava/lang/Object;)Lcom/vk/silentauth/SilentAuthInfo;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/vk/silentauth/SilentAuthInfo;->userId:Lcom/vk/dto/common/id/UserId;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/vk/silentauth/SilentAuthInfo;->uuid:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/vk/silentauth/SilentAuthInfo;->token:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/vk/silentauth/SilentAuthInfo;->expireTime:J

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/vk/silentauth/SilentAuthInfo;->firstName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/vk/silentauth/SilentAuthInfo;->photo50:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/vk/silentauth/SilentAuthInfo;->photo100:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/vk/silentauth/SilentAuthInfo;->photo200:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/vk/silentauth/SilentAuthInfo;->lastName:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/vk/silentauth/SilentAuthInfo;->phone:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/vk/silentauth/SilentAuthInfo;->serviceInfo:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/vk/silentauth/SilentAuthInfo;->extras:Landroid/os/Bundle;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Lcom/vk/silentauth/SilentAuthInfo;->weight:I

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/vk/silentauth/SilentAuthInfo;->userHash:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/vk/silentauth/SilentAuthInfo;->applicationProviderPackage:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/vk/silentauth/SilentAuthInfo;->providerInfoItems:Ljava/util/List;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v1, v1, v16

    if-eqz v1, :cond_10

    iget v1, v0, Lcom/vk/silentauth/SilentAuthInfo;->providerAppId:I

    goto :goto_10

    :cond_10
    move/from16 v1, p18

    :goto_10
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p17, v15

    move/from16 p18, v1

    invoke-virtual/range {p0 .. p18}, Lcom/vk/silentauth/SilentAuthInfo;->copy(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)Lcom/vk/silentauth/SilentAuthInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1$vkid_release()Lcom/vk/dto/common/id/UserId;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->userId:Lcom/vk/dto/common/id/UserId;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->serviceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->weight:I

    return v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->userHash:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->applicationProviderPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/silentauth/SilentTokenProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->providerInfoItems:Ljava/util/List;

    return-object v0
.end method

.method public final component17()I
    .locals 1

    iget v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->providerAppId:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->expireTime:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo50:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo100:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo200:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)Lcom/vk/silentauth/SilentAuthInfo;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vk/silentauth/SilentTokenProviderInfo;",
            ">;I)",
            "Lcom/vk/silentauth/SilentAuthInfo;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    const-string v0, "userId"

    move-object/from16 v19, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuid"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firstName"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastName"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userHash"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providerInfoItems"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v20, Lcom/vk/silentauth/SilentAuthInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct/range {v0 .. v18}, Lcom/vk/silentauth/SilentAuthInfo;-><init>(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    return-object v20
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vk/silentauth/SilentAuthInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vk/silentauth/SilentAuthInfo;

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->userId:Lcom/vk/dto/common/id/UserId;

    iget-object v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->userId:Lcom/vk/dto/common/id/UserId;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->uuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->uuid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/vk/silentauth/SilentAuthInfo;->expireTime:J

    iget-wide v5, p1, Lcom/vk/silentauth/SilentAuthInfo;->expireTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->firstName:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->firstName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo50:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->photo50:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo100:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->photo100:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo200:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->photo200:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->lastName:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->lastName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->phone:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->phone:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->serviceInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->serviceInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->extras:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->extras:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->weight:I

    iget v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->weight:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->userHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->userHash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->applicationProviderPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->applicationProviderPackage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->providerInfoItems:Ljava/util/List;

    iget-object v3, p1, Lcom/vk/silentauth/SilentAuthInfo;->providerInfoItems:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->providerAppId:I

    iget p1, p1, Lcom/vk/silentauth/SilentAuthInfo;->providerAppId:I

    if-eq v1, p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public final getApplicationProviderPackage()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->applicationProviderPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getDistinctId()J
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->userId:Lcom/vk/dto/common/id/UserId;

    invoke-static {v0}, Lcom/vk/dto/common/id/UserIdKt;->isReal(Lcom/vk/dto/common/id/UserId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->userId:Lcom/vk/dto/common/id/UserId;

    invoke-virtual {v0}, Lcom/vk/dto/common/id/UserId;->getValue()J

    move-result-wide v0

    return-wide v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->firstName:Ljava/lang/String;

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->lastName:Ljava/lang/String;

    iget-object v2, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo200:Ljava/lang/String;

    iget-object v3, p0, Lcom/vk/silentauth/SilentAuthInfo;->phone:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getExpireTime()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->expireTime:J

    return-wide v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getFirstName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final getOauthServiceName()Ljava/lang/String;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "key_service_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getPhone()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoto100()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo100:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoto200()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo200:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoto50()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo50:Ljava/lang/String;

    return-object v0
.end method

.method public final getProviderAppId()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->providerAppId:I

    return v0
.end method

.method public final getProviderInfoItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/silentauth/SilentTokenProviderInfo;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->providerInfoItems:Ljava/util/List;

    return-object v0
.end method

.method public final getServiceInfo()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->serviceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserHash()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->userHash:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId$vkid_release()Lcom/vk/dto/common/id/UserId;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->userId:Lcom/vk/dto/common/id/UserId;

    return-object v0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getWeight()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->weight:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->userId:Lcom/vk/dto/common/id/UserId;

    invoke-virtual {v0}, Lcom/vk/dto/common/id/UserId;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->expireTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->firstName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo50:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo100:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo200:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->lastName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->phone:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->serviceInfo:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Landroid/os/Bundle;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->weight:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->userHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->applicationProviderPackage:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->providerInfoItems:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/silentauth/SilentAuthInfo;->providerAppId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isExchangeUser()Z
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "isExchangeUser"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vk/silentauth/SilentAuthInfo;->userId:Lcom/vk/dto/common/id/UserId;

    iget-object v2, v0, Lcom/vk/silentauth/SilentAuthInfo;->uuid:Ljava/lang/String;

    iget-object v3, v0, Lcom/vk/silentauth/SilentAuthInfo;->token:Ljava/lang/String;

    iget-wide v4, v0, Lcom/vk/silentauth/SilentAuthInfo;->expireTime:J

    iget-object v6, v0, Lcom/vk/silentauth/SilentAuthInfo;->firstName:Ljava/lang/String;

    iget-object v7, v0, Lcom/vk/silentauth/SilentAuthInfo;->photo50:Ljava/lang/String;

    iget-object v8, v0, Lcom/vk/silentauth/SilentAuthInfo;->photo100:Ljava/lang/String;

    iget-object v9, v0, Lcom/vk/silentauth/SilentAuthInfo;->photo200:Ljava/lang/String;

    iget-object v10, v0, Lcom/vk/silentauth/SilentAuthInfo;->lastName:Ljava/lang/String;

    iget-object v11, v0, Lcom/vk/silentauth/SilentAuthInfo;->phone:Ljava/lang/String;

    iget-object v12, v0, Lcom/vk/silentauth/SilentAuthInfo;->serviceInfo:Ljava/lang/String;

    iget-object v13, v0, Lcom/vk/silentauth/SilentAuthInfo;->extras:Landroid/os/Bundle;

    iget v14, v0, Lcom/vk/silentauth/SilentAuthInfo;->weight:I

    iget-object v15, v0, Lcom/vk/silentauth/SilentAuthInfo;->userHash:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/vk/silentauth/SilentAuthInfo;->applicationProviderPackage:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/vk/silentauth/SilentAuthInfo;->providerInfoItems:Ljava/util/List;

    move-object/from16 v18, v15

    iget v15, v0, Lcom/vk/silentauth/SilentAuthInfo;->providerAppId:I

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v19, v15

    const-string v15, "SilentAuthInfo(userId="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", photo50="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", photo100="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", photo200="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", applicationProviderPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", providerInfoItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", providerAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->userId:Lcom/vk/dto/common/id/UserId;

    invoke-virtual {p2}, Lcom/vk/dto/common/id/UserId;->getValue()J

    move-result-wide v0

    long-to-int p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->uuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-wide v0, p0, Lcom/vk/silentauth/SilentAuthInfo;->expireTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->firstName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo50:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo100:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->photo200:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->lastName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->phone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->serviceInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->extras:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Parcelable;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 162
    iget p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->weight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->userHash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->applicationProviderPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->providerInfoItems:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 166
    iget-object p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->userId:Lcom/vk/dto/common/id/UserId;

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 167
    iget p2, p0, Lcom/vk/silentauth/SilentAuthInfo;->providerAppId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
