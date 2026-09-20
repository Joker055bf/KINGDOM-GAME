.class public final enum Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;
.super Ljava/lang/Enum;
.source "IncorrectFormatException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/osbcp/cssparser/IncorrectFormatException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

.field public static final enum FOUND_COLON_WHEN_READING_SELECTOR_NAME:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

.field public static final enum FOUND_COLON_WHILE_READING_VALUE:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

.field public static final enum FOUND_END_BRACKET_BEFORE_SEMICOLON:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

.field public static final enum FOUND_SEMICOLON_WHEN_READING_PROPERTY_NAME:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 62
    new-instance v0, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    const-string v1, "FOUND_SEMICOLON_WHEN_READING_PROPERTY_NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;-><init>(Ljava/lang/String;I)V

    .line 65
    sput-object v0, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;->FOUND_SEMICOLON_WHEN_READING_PROPERTY_NAME:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    .line 67
    new-instance v1, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    const-string v3, "FOUND_END_BRACKET_BEFORE_SEMICOLON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;-><init>(Ljava/lang/String;I)V

    .line 70
    sput-object v1, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;->FOUND_END_BRACKET_BEFORE_SEMICOLON:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    .line 72
    new-instance v3, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    const-string v5, "FOUND_COLON_WHEN_READING_SELECTOR_NAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;-><init>(Ljava/lang/String;I)V

    .line 75
    sput-object v3, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;->FOUND_COLON_WHEN_READING_SELECTOR_NAME:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    .line 77
    new-instance v5, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    const-string v7, "FOUND_COLON_WHILE_READING_VALUE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;-><init>(Ljava/lang/String;I)V

    .line 80
    sput-object v5, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;->FOUND_COLON_WHILE_READING_VALUE:Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 60
    sput-object v7, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;->ENUM$VALUES:[Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;
    .locals 4

    .line 1
    sget-object v0, Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;->ENUM$VALUES:[Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/osbcp/cssparser/IncorrectFormatException$ErrorCode;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
