.class Lbr/com/vanswatch/CustomEditTextWatcher$1;
.super Lbr/com/vanslisteners/RightDrawableOnTouchListener;
.source "CustomEditTextWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/vanswatch/CustomEditTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lbr/com/vanswatch/CustomEditTextWatcher;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vanswatch/CustomEditTextWatcher$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x328195b3fe61544bL    # -2.0019354739279925E65

    const-string v2, "br/com/vanswatch/CustomEditTextWatcher$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vanswatch/CustomEditTextWatcher$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lbr/com/vanswatch/CustomEditTextWatcher;Landroid/widget/TextView;)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vanswatch/CustomEditTextWatcher$1;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iput-object p1, p0, Lbr/com/vanswatch/CustomEditTextWatcher$1;->this$0:Lbr/com/vanswatch/CustomEditTextWatcher;

    invoke-direct {p0, p2}, Lbr/com/vanslisteners/RightDrawableOnTouchListener;-><init>(Landroid/widget/TextView;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onDrawableTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vanswatch/CustomEditTextWatcher$1;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iget-object v1, p0, Lbr/com/vanswatch/CustomEditTextWatcher$1;->this$0:Lbr/com/vanswatch/CustomEditTextWatcher;

    invoke-static {v1}, Lbr/com/vanswatch/CustomEditTextWatcher;->access$000(Lbr/com/vanswatch/CustomEditTextWatcher;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    aput-boolean v3, v0, v3

    return v3
.end method
