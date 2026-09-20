.class Lcom/openmediation/sdk/utils/crash/CrashUtil$CrashUtilHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/crash/CrashUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrashUtilHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/openmediation/sdk/utils/crash/CrashUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/utils/crash/CrashUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;-><init>(Lcom/openmediation/sdk/utils/crash/CrashUtil$1;)V

    sput-object v0, Lcom/openmediation/sdk/utils/crash/CrashUtil$CrashUtilHolder;->INSTANCE:Lcom/openmediation/sdk/utils/crash/CrashUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/openmediation/sdk/utils/crash/CrashUtil;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/crash/CrashUtil$CrashUtilHolder;->INSTANCE:Lcom/openmediation/sdk/utils/crash/CrashUtil;

    return-object v0
.end method
