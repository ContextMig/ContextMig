.class final Lcom/appflood/AFListActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/AFListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/AFListActivity;


# direct methods
.method constructor <init>(Lcom/appflood/AFListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFListActivity$5;->a:Lcom/appflood/AFListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/appflood/AFListActivity$5;->a:Lcom/appflood/AFListActivity;

    iget-object v0, v0, Lcom/appflood/AFListActivity;->s:Lcom/appflood/AFListActivity$a;

    return-object v0
.end method
