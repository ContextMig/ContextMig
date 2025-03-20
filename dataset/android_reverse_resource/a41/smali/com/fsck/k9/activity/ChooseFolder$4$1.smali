.class Lcom/fsck/k9/activity/ChooseFolder$4$1;
.super Ljava/lang/Object;
.source "ChooseFolder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/ChooseFolder$4;->listFolders(Lcom/fsck/k9/Account;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/ChooseFolder$4;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ChooseFolder$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/ChooseFolder$4;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseFolder$4$1;->this$1:Lcom/fsck/k9/activity/ChooseFolder$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 307
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/activity/ChooseFolder$4$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 311
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .end local v0    # "ret":I
    :goto_0
    return v0

    .restart local v0    # "ret":I
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
