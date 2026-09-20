.class final enum Lcom/osbcp/cssparser/State;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/osbcp/cssparser/State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/osbcp/cssparser/State;

.field public static final enum INSIDE_COMMENT:Lcom/osbcp/cssparser/State;

.field public static final enum INSIDE_PROPERTY_NAME:Lcom/osbcp/cssparser/State;

.field public static final enum INSIDE_SELECTOR:Lcom/osbcp/cssparser/State;

.field public static final enum INSIDE_VALUE:Lcom/osbcp/cssparser/State;

.field public static final enum INSIDE_VALUE_ROUND_BRACKET:Lcom/osbcp/cssparser/State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 28
    new-instance v0, Lcom/osbcp/cssparser/State;

    const-string v1, "INSIDE_SELECTOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/osbcp/cssparser/State;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/osbcp/cssparser/State;->INSIDE_SELECTOR:Lcom/osbcp/cssparser/State;

    .line 33
    new-instance v1, Lcom/osbcp/cssparser/State;

    const-string v3, "INSIDE_COMMENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/osbcp/cssparser/State;-><init>(Ljava/lang/String;I)V

    .line 36
    sput-object v1, Lcom/osbcp/cssparser/State;->INSIDE_COMMENT:Lcom/osbcp/cssparser/State;

    .line 38
    new-instance v3, Lcom/osbcp/cssparser/State;

    const-string v5, "INSIDE_PROPERTY_NAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/osbcp/cssparser/State;-><init>(Ljava/lang/String;I)V

    .line 41
    sput-object v3, Lcom/osbcp/cssparser/State;->INSIDE_PROPERTY_NAME:Lcom/osbcp/cssparser/State;

    .line 43
    new-instance v5, Lcom/osbcp/cssparser/State;

    const-string v7, "INSIDE_VALUE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/osbcp/cssparser/State;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v5, Lcom/osbcp/cssparser/State;->INSIDE_VALUE:Lcom/osbcp/cssparser/State;

    .line 48
    new-instance v7, Lcom/osbcp/cssparser/State;

    const-string v9, "INSIDE_VALUE_ROUND_BRACKET"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/osbcp/cssparser/State;-><init>(Ljava/lang/String;I)V

    .line 51
    sput-object v7, Lcom/osbcp/cssparser/State;->INSIDE_VALUE_ROUND_BRACKET:Lcom/osbcp/cssparser/State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/osbcp/cssparser/State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 26
    sput-object v9, Lcom/osbcp/cssparser/State;->ENUM$VALUES:[Lcom/osbcp/cssparser/State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/osbcp/cssparser/State;
    .locals 1

    .line 1
    const-class v0, Lcom/osbcp/cssparser/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/osbcp/cssparser/State;

    return-object p0
.end method

.method public static values()[Lcom/osbcp/cssparser/State;
    .locals 4

    .line 1
    sget-object v0, Lcom/osbcp/cssparser/State;->ENUM$VALUES:[Lcom/osbcp/cssparser/State;

    array-length v1, v0

    new-array v2, v1, [Lcom/osbcp/cssparser/State;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
