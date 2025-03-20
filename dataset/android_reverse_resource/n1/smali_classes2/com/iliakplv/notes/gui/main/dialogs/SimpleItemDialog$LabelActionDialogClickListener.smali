.class Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener;
.super Ljava/lang/Object;
.source "SimpleItemDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelActionDialogClickListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final DELETE_INDEX:I

.field private final EDIT_INDEX:I

.field final synthetic this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1d288ffe3bfd5645L

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 240
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener;->EDIT_INDEX:I

    .line 238
    iput v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener;->DELETE_INDEX:I

    .line 240
    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener;->$jacocoInit()[Z

    move-result-object v1

    .line 244
    packed-switch p2, :pswitch_data_0

    aput-boolean v4, v1, v4

    .line 254
    :goto_0
    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    return-void

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iget-object v0, v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/iliakplv/notes/gui/main/MainActivity;

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    .line 247
    invoke-virtual {v0}, Lcom/iliakplv/notes/gui/main/MainActivity;->getNavigationDrawerFragment()Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iget-object v2, v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->id:Ljava/io/Serializable;

    const/4 v3, 0x3

    aput-boolean v4, v1, v3

    .line 248
    invoke-virtual {v0, v2}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->showLabelEditDialog(Ljava/io/Serializable;)V

    .line 249
    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->LabelDelete:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    invoke-static {v0, v2}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->access$000(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;)V

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
