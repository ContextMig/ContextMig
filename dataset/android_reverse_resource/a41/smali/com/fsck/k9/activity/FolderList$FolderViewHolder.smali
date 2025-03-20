.class Lcom/fsck/k9/activity/FolderList$FolderViewHolder;
.super Ljava/lang/Object;
.source "FolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/FolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FolderViewHolder"
.end annotation


# instance fields
.field public activeIcons:Landroid/widget/RelativeLayout;

.field public chip:Landroid/view/View;

.field public flaggedMessageCount:Landroid/widget/TextView;

.field public flaggedMessageCountIcon:Landroid/view/View;

.field public flaggedMessageCountWrapper:Landroid/view/View;

.field public folderListItemLayout:Landroid/widget/LinearLayout;

.field public folderName:Landroid/widget/TextView;

.field public folderStatus:Landroid/widget/TextView;

.field public newMessageCount:Landroid/widget/TextView;

.field public newMessageCountIcon:Landroid/view/View;

.field public newMessageCountWrapper:Landroid/view/View;

.field public rawFolderName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
