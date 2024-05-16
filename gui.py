import tkinter as tk
from tkinter import messagebox
import subprocess

class FirewallSetupGUI:
    def __init__(self, root):
        self.root = root
        self.root.title("Firewall Setup GUI")
        
        self.label_domain = tk.Label(root, text="Domain:")
        self.label_domain.grid(row=0, column=0, padx=10, pady=5, sticky=tk.W)
        
        self.entry_domain = tk.Entry(root)
        self.entry_domain.grid(row=0, column=1, padx=10, pady=5)
        
        self.btn_setup = tk.Button(root, text="Setup Firewall", command=self.setup_firewall)
        self.btn_setup.grid(row=1, columnspan=2, padx=10, pady=5)
        
    def setup_firewall(self):
        domain = self.entry_domain.get()
        if not domain:
            messagebox.showerror("Error", "Please enter a domain.")
            return
        
        try:
            subprocess.run(["bash", "main_firewall_setup.sh", domain])
            messagebox.showinfo("Success", "Firewall setup completed.")
        except Exception as e:
            messagebox.showerror("Error", str(e))

if __name__ == "__main__":
    root = tk.Tk()
    app = FirewallSetupGUI(root)
    root.mainloop()
