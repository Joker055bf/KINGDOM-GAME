.class public final enum Lorg/htmlcleaner/audit/ErrorType;
.super Ljava/lang/Enum;
.source "ErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/htmlcleaner/audit/ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/htmlcleaner/audit/ErrorType;

.field public static final enum Deprecated:Lorg/htmlcleaner/audit/ErrorType;

.field public static final enum FatalTagMissing:Lorg/htmlcleaner/audit/ErrorType;

.field public static final enum NotAllowedTag:Lorg/htmlcleaner/audit/ErrorType;

.field public static final enum RequiredParentMissing:Lorg/htmlcleaner/audit/ErrorType;

.field public static final enum UnclosedTag:Lorg/htmlcleaner/audit/ErrorType;

.field public static final enum UniqueTagDuplicated:Lorg/htmlcleaner/audit/ErrorType;

.field public static final enum Unknown:Lorg/htmlcleaner/audit/ErrorType;

.field public static final enum UnpermittedChild:Lorg/htmlcleaner/audit/ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 56
    new-instance v0, Lorg/htmlcleaner/audit/ErrorType;

    const-string v1, "FatalTagMissing"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/audit/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/htmlcleaner/audit/ErrorType;->FatalTagMissing:Lorg/htmlcleaner/audit/ErrorType;

    .line 60
    new-instance v1, Lorg/htmlcleaner/audit/ErrorType;

    const-string v3, "NotAllowedTag"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/htmlcleaner/audit/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/htmlcleaner/audit/ErrorType;->NotAllowedTag:Lorg/htmlcleaner/audit/ErrorType;

    .line 64
    new-instance v3, Lorg/htmlcleaner/audit/ErrorType;

    const-string v5, "RequiredParentMissing"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/htmlcleaner/audit/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/htmlcleaner/audit/ErrorType;->RequiredParentMissing:Lorg/htmlcleaner/audit/ErrorType;

    .line 74
    new-instance v5, Lorg/htmlcleaner/audit/ErrorType;

    const-string v7, "UnclosedTag"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/htmlcleaner/audit/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/htmlcleaner/audit/ErrorType;->UnclosedTag:Lorg/htmlcleaner/audit/ErrorType;

    .line 89
    new-instance v7, Lorg/htmlcleaner/audit/ErrorType;

    const-string v9, "UniqueTagDuplicated"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/htmlcleaner/audit/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/htmlcleaner/audit/ErrorType;->UniqueTagDuplicated:Lorg/htmlcleaner/audit/ErrorType;

    .line 101
    new-instance v9, Lorg/htmlcleaner/audit/ErrorType;

    const-string v11, "Deprecated"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/htmlcleaner/audit/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/htmlcleaner/audit/ErrorType;->Deprecated:Lorg/htmlcleaner/audit/ErrorType;

    .line 111
    new-instance v11, Lorg/htmlcleaner/audit/ErrorType;

    const-string v13, "UnpermittedChild"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/htmlcleaner/audit/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/htmlcleaner/audit/ErrorType;->UnpermittedChild:Lorg/htmlcleaner/audit/ErrorType;

    .line 123
    new-instance v13, Lorg/htmlcleaner/audit/ErrorType;

    const-string v15, "Unknown"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/htmlcleaner/audit/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/htmlcleaner/audit/ErrorType;->Unknown:Lorg/htmlcleaner/audit/ErrorType;

    const/16 v15, 0x8

    new-array v15, v15, [Lorg/htmlcleaner/audit/ErrorType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 42
    sput-object v15, Lorg/htmlcleaner/audit/ErrorType;->$VALUES:[Lorg/htmlcleaner/audit/ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/htmlcleaner/audit/ErrorType;
    .locals 1

    .line 42
    const-class v0, Lorg/htmlcleaner/audit/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/htmlcleaner/audit/ErrorType;

    return-object p0
.end method

.method public static values()[Lorg/htmlcleaner/audit/ErrorType;
    .locals 1

    .line 42
    sget-object v0, Lorg/htmlcleaner/audit/ErrorType;->$VALUES:[Lorg/htmlcleaner/audit/ErrorType;

    invoke-virtual {v0}, [Lorg/htmlcleaner/audit/ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/htmlcleaner/audit/ErrorType;

    return-object v0
.end method
