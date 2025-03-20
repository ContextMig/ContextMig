.class Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;
.super Ljava/lang/Object;
.source "LabelEditDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelEditDialogCheckBoxListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private currentSelectedCheckBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2003ab36909fd6fdL

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;Landroid/widget/CheckBox;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;->$jacocoInit()[Z

    move-result-object v0

    .line 156
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;->currentSelectedCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 158
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;->currentSelectedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    aput-boolean v2, v0, v2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;->$jacocoInit()[Z

    move-result-object v1

    .line 163
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;->currentSelectedCheckBox:Landroid/widget/CheckBox;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 164
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;->currentSelectedCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object v0, p1

    .line 165
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;->currentSelectedCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 166
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->access$002(Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;I)I

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    .line 170
    :goto_0
    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;->currentSelectedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    goto :goto_0
.end method
