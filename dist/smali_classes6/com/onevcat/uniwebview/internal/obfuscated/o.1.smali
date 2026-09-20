.class public final enum Lcom/onevcat/uniwebview/internal/obfuscated/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/onevcat/uniwebview/internal/obfuscated/o;

.field public static final enum c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

.field public static final enum d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

.field public static final enum e:Lcom/onevcat/uniwebview/internal/obfuscated/o;

.field public static final enum f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

.field public static final synthetic g:[Lcom/onevcat/uniwebview/internal/obfuscated/o;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/o;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/o;->b:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    .line 2
    new-instance v1, Lcom/onevcat/uniwebview/internal/obfuscated/o;

    const/16 v3, 0xa

    const-string v4, "DEBUG"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/onevcat/uniwebview/internal/obfuscated/o;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    .line 3
    new-instance v3, Lcom/onevcat/uniwebview/internal/obfuscated/o;

    const/16 v4, 0x14

    const-string v6, "INFO"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/onevcat/uniwebview/internal/obfuscated/o;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    .line 4
    new-instance v4, Lcom/onevcat/uniwebview/internal/obfuscated/o;

    const/16 v6, 0x32

    const-string v8, "WARNING"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/onevcat/uniwebview/internal/obfuscated/o;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/onevcat/uniwebview/internal/obfuscated/o;->e:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    .line 5
    new-instance v6, Lcom/onevcat/uniwebview/internal/obfuscated/o;

    const/16 v8, 0x50

    const-string v10, "CRITICAL"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/onevcat/uniwebview/internal/obfuscated/o;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    .line 6
    new-instance v8, Lcom/onevcat/uniwebview/internal/obfuscated/o;

    const/16 v10, 0x63

    const-string v12, "OFF"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/onevcat/uniwebview/internal/obfuscated/o;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/onevcat/uniwebview/internal/obfuscated/o;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v3, v10, v7

    aput-object v4, v10, v9

    aput-object v6, v10, v11

    aput-object v8, v10, v13

    .line 8
    sput-object v10, Lcom/onevcat/uniwebview/internal/obfuscated/o;->g:[Lcom/onevcat/uniwebview/internal/obfuscated/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/o;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onevcat/uniwebview/internal/obfuscated/o;
    .locals 1

    .line 1
    const-class v0, Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onevcat/uniwebview/internal/obfuscated/o;

    return-object p0
.end method

.method public static values()[Lcom/onevcat/uniwebview/internal/obfuscated/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/o;->g:[Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onevcat/uniwebview/internal/obfuscated/o;

    return-object v0
.end method
