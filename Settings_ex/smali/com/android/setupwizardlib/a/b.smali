.class final Lcom/android/setupwizardlib/a/b;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aLY:Landroid/view/Window;

.field final synthetic aLZ:I

.field final synthetic ye:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/os/Handler;I)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/setupwizardlib/a/b;->aLY:Landroid/view/Window;

    iput-object p2, p0, Lcom/android/setupwizardlib/a/b;->ye:Landroid/os/Handler;

    iput p3, p0, Lcom/android/setupwizardlib/a/b;->aLZ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/setupwizardlib/a/b;->aLY:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/setupwizardlib/a/b;->ye:Landroid/os/Handler;

    iget v2, p0, Lcom/android/setupwizardlib/a/b;->aLZ:I

    invoke-static {v0, v1, v2}, Lcom/android/setupwizardlib/a/a;->b(Landroid/view/Window;Landroid/os/Handler;I)V

    .line 181
    return-void
.end method