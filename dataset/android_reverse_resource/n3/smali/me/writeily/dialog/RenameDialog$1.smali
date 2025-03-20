.class Lme/writeily/dialog/RenameDialog$1;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/dialog/RenameDialog;->setUpDialog(Ljava/io/File;Landroid/view/LayoutInflater;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/dialog/RenameDialog;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/dialog/RenameDialog$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x32d34ba2c901cc0eL    # -5.9041829340502E63

    const-string v2, "me/writeily/dialog/RenameDialog$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/dialog/RenameDialog$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/dialog/RenameDialog;Ljava/io/File;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/RenameDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iput-object p1, p0, Lme/writeily/dialog/RenameDialog$1;->this$0:Lme/writeily/dialog/RenameDialog;

    iput-object p2, p0, Lme/writeily/dialog/RenameDialog$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/dialog/RenameDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lme/writeily/dialog/RenameDialog$1;->this$0:Lme/writeily/dialog/RenameDialog;

    iget-object v2, p0, Lme/writeily/dialog/RenameDialog$1;->this$0:Lme/writeily/dialog/RenameDialog;

    invoke-static {v2}, Lme/writeily/dialog/RenameDialog;->access$000(Lme/writeily/dialog/RenameDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lme/writeily/dialog/RenameDialog$1;->val$file:Ljava/io/File;

    invoke-static {v1, v2, v3}, Lme/writeily/dialog/RenameDialog;->access$100(Lme/writeily/dialog/RenameDialog;Ljava/lang/String;Ljava/io/File;)V

    .line 59
    aput-boolean v4, v0, v4

    return-void
.end method
