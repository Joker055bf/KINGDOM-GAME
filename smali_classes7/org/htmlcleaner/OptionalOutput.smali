.class public final enum Lorg/htmlcleaner/OptionalOutput;
.super Ljava/lang/Enum;
.source "OptionalOutput.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/htmlcleaner/OptionalOutput;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/htmlcleaner/OptionalOutput;

.field public static final enum alwaysOutput:Lorg/htmlcleaner/OptionalOutput;

.field public static final enum omit:Lorg/htmlcleaner/OptionalOutput;

.field public static final enum preserve:Lorg/htmlcleaner/OptionalOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lorg/htmlcleaner/OptionalOutput;

    const-string v1, "omit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/OptionalOutput;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/htmlcleaner/OptionalOutput;->omit:Lorg/htmlcleaner/OptionalOutput;

    .line 15
    new-instance v1, Lorg/htmlcleaner/OptionalOutput;

    const-string v3, "preserve"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/htmlcleaner/OptionalOutput;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/htmlcleaner/OptionalOutput;->preserve:Lorg/htmlcleaner/OptionalOutput;

    .line 19
    new-instance v3, Lorg/htmlcleaner/OptionalOutput;

    const-string v5, "alwaysOutput"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/htmlcleaner/OptionalOutput;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/htmlcleaner/OptionalOutput;->alwaysOutput:Lorg/htmlcleaner/OptionalOutput;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/htmlcleaner/OptionalOutput;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 7
    sput-object v5, Lorg/htmlcleaner/OptionalOutput;->$VALUES:[Lorg/htmlcleaner/OptionalOutput;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/htmlcleaner/OptionalOutput;
    .locals 1

    .line 7
    const-class v0, Lorg/htmlcleaner/OptionalOutput;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/htmlcleaner/OptionalOutput;

    return-object p0
.end method

.method public static values()[Lorg/htmlcleaner/OptionalOutput;
    .locals 1

    .line 7
    sget-object v0, Lorg/htmlcleaner/OptionalOutput;->$VALUES:[Lorg/htmlcleaner/OptionalOutput;

    invoke-virtual {v0}, [Lorg/htmlcleaner/OptionalOutput;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/htmlcleaner/OptionalOutput;

    return-object v0
.end method
