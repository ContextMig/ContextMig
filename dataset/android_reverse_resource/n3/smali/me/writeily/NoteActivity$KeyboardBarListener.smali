.class Lme/writeily/NoteActivity$KeyboardBarListener;
.super Ljava/lang/Object;
.source "NoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/NoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardBarListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/NoteActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/NoteActivity$KeyboardBarListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xaf770a3541905b6L    # -5.762020997183147E255

    const-string v2, "me/writeily/NoteActivity$KeyboardBarListener"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/NoteActivity$KeyboardBarListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lme/writeily/NoteActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NoteActivity$KeyboardBarListener;->$jacocoInit()[Z

    move-result-object v0

    .line 344
    iput-object p1, p0, Lme/writeily/NoteActivity$KeyboardBarListener;->this$0:Lme/writeily/NoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lme/writeily/NoteActivity;Lme/writeily/NoteActivity$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NoteActivity$KeyboardBarListener;->$jacocoInit()[Z

    move-result-object v0

    .line 344
    invoke-direct {p0, p1}, Lme/writeily/NoteActivity$KeyboardBarListener;-><init>(Lme/writeily/NoteActivity;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/NoteActivity$KeyboardBarListener;->$jacocoInit()[Z

    move-result-object v0

    .line 347
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 348
    iget-object v2, p0, Lme/writeily/NoteActivity$KeyboardBarListener;->this$0:Lme/writeily/NoteActivity;

    invoke-static {v2}, Lme/writeily/NoteActivity;->access$200(Lme/writeily/NoteActivity;)Lme/writeily/editor/HighlightingEditor;

    move-result-object v2

    invoke-virtual {v2}, Lme/writeily/editor/HighlightingEditor;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lme/writeily/NoteActivity$KeyboardBarListener;->this$0:Lme/writeily/NoteActivity;

    invoke-static {v3}, Lme/writeily/NoteActivity;->access$200(Lme/writeily/NoteActivity;)Lme/writeily/editor/HighlightingEditor;

    move-result-object v3

    invoke-virtual {v3}, Lme/writeily/editor/HighlightingEditor;->getSelectionStart()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 349
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return-void
.end method
