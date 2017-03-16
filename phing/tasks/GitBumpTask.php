<?php
/**
 * Part of the Laradic PHP Packages.
 *
 * Copyright (c) 2017. Robin Radic.
 *
 * The license can be found in the package and online at https://laradic.mit-license.org.
 *
 * @copyright Copyright 2017 (c) Robin Radic
 * @license https://laradic.mit-license.org The MIT License
 */
class GitBumpTask extends GitBaseTask
{
    /**
     *  Called by the project to let the task do it's work. This method may be
     *  called more than once, if the task is invoked more than once. For
     *  example, if target1 and target2 both depend on target3, then running
     *  <em>phing target1 target2</em> will run all tasks in target3 twice.
     *
     *  Should throw a BuildException if someting goes wrong with the build
     *
     *  This is here. Must be overloaded by real tasks.
     */
    public function main()
    {
        if (null === $this->getRepository()) {
            throw new BuildException('"repository" is required parameter');
        }
        $client = $this->getGitClient(false, $this->getRepository());
        $command = $client->getCommand('tag');
        $command
            ->setOption('-l')
            ->setOption('--sort', '-v:refname');
        $result = $command->execute();
        var_dump($result);
    }
}
