.class final enum Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;
.super Ljava/lang/Enum;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/fragment/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FolderOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

.field public static final enum COPY:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

.field public static final enum MOVE:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1842
    new-instance v0, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    const-string v1, "COPY"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->COPY:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    new-instance v0, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    .line 1841
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    sget-object v1, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->COPY:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->$VALUES:[Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1841
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1841
    const-class v0, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;
    .locals 1

    .prologue
    .line 1841
    sget-object v0, Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->$VALUES:[Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    invoke-virtual {v0}, [Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/fragment/MessageListFragment$FolderOperation;

    return-object v0
.end method
