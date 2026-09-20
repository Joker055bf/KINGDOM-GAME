.class public final synthetic Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda4;->f$0:Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda4;->f$0:Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->lambda$bindToEditText$2$com-tgs-aics-emotionkeyboard-EmotionKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
