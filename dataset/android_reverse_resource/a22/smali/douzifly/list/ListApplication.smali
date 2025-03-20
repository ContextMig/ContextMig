.class public final Ldouzifly/list/ListApplication;
.super Lcom/activeandroid/app/Application;


# static fields
.field public static final a:Ldouzifly/list/a;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldouzifly/list/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldouzifly/list/a;-><init>(Lb/d/b/g;)V

    sput-object v0, Ldouzifly/list/ListApplication;->a:Ldouzifly/list/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/activeandroid/app/Application;-><init>()V

    return-void
.end method

.method public static final synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Ldouzifly/list/ListApplication;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic a(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Ldouzifly/list/ListApplication;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/activeandroid/app/Application;->onCreate()V

    sget-object v1, Ldouzifly/list/ListApplication;->a:Ldouzifly/list/a;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Ldouzifly/list/a;->a(Landroid/content/Context;)V

    const-string v0, "list.db"

    new-instance v1, Lcom/activeandroid/Configuration$Builder;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/activeandroid/Configuration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/activeandroid/Configuration$Builder;->setDatabaseName(Ljava/lang/String;)Lcom/activeandroid/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/Configuration$Builder;->create()Lcom/activeandroid/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/ActiveAndroid;->initialize(Lcom/activeandroid/Configuration;)V

    return-void
.end method
