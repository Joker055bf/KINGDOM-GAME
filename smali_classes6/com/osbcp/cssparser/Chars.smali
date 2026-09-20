.class final Lcom/osbcp/cssparser/Chars;
.super Ljava/lang/Object;
.source "Chars.java"


# static fields
.field static final BRACKET_BEG:Ljava/lang/Character;

.field static final BRACKET_END:Ljava/lang/Character;

.field static final COLON:Ljava/lang/Character;

.field static final COMMA:Ljava/lang/Character;

.field static final ROUND_BRACKET_BEG:Ljava/lang/Character;

.field static final ROUND_BRACKET_END:Ljava/lang/Character;

.field static final SEMI_COLON:Ljava/lang/Character;

.field static final SLASH:Ljava/lang/Character;

.field static final STAR:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2a

    .line 32
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/osbcp/cssparser/Chars;->STAR:Ljava/lang/Character;

    const/16 v0, 0x2f

    .line 37
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/osbcp/cssparser/Chars;->SLASH:Ljava/lang/Character;

    const/16 v0, 0x2c

    .line 42
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/osbcp/cssparser/Chars;->COMMA:Ljava/lang/Character;

    const/16 v0, 0x7b

    .line 47
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/osbcp/cssparser/Chars;->BRACKET_BEG:Ljava/lang/Character;

    const/16 v0, 0x7d

    .line 52
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/osbcp/cssparser/Chars;->BRACKET_END:Ljava/lang/Character;

    const/16 v0, 0x3a

    .line 57
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/osbcp/cssparser/Chars;->COLON:Ljava/lang/Character;

    const/16 v0, 0x3b

    .line 62
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/osbcp/cssparser/Chars;->SEMI_COLON:Ljava/lang/Character;

    const/16 v0, 0x28

    .line 67
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/osbcp/cssparser/Chars;->ROUND_BRACKET_BEG:Ljava/lang/Character;

    const/16 v0, 0x29

    .line 72
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/osbcp/cssparser/Chars;->ROUND_BRACKET_END:Ljava/lang/Character;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
