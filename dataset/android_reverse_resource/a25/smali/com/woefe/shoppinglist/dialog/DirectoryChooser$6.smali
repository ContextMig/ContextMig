.class Lcom/woefe/shoppinglist/dialog/DirectoryChooser$6;
.super Ljava/lang/Object;
.source "DirectoryChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->chooseStorageLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/dialog/DirectoryChooser;

.field final synthetic val$locations:[Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;[Ljava/io/File;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$6;->this$0:Lcom/woefe/shoppinglist/dialog/DirectoryChooser;

    iput-object p2, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$6;->val$locations:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 214
    iget-object p1, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$6;->this$0:Lcom/woefe/shoppinglist/dialog/DirectoryChooser;

    iget-object v0, p0, Lcom/woefe/shoppinglist/dialog/DirectoryChooser$6;->val$locations:[Ljava/io/File;

    aget-object p2, v0, p2

    invoke-static {p1, p2}, Lcom/woefe/shoppinglist/dialog/DirectoryChooser;->access$200(Lcom/woefe/shoppinglist/dialog/DirectoryChooser;Ljava/io/File;)V

    return-void
.end method
