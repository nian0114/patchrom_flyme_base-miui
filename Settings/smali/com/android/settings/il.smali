.class Lcom/android/settings/il;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic By:Lcom/android/settings/ij;


# direct methods
.method constructor <init>(Lcom/android/settings/ij;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/settings/il;->By:Lcom/android/settings/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 702
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 703
    return-void
.end method
